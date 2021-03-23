#include "Analyzer.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/FileSystem.h"

Analyzer &Analyzer::instance()
{
    static Analyzer *instance = new Analyzer();
    return *instance;
}

Analyzer::Analyzer()
{
    auto *dataLogFile = getenv("RYANRIO_COMPILE_LOG_FILE");
    std::error_code file_err;
    if (dataLogFile != nullptr)
    {
        int fd = 0;
        if (std::error_code ec = llvm::sys::fs::openFileForWrite(
                dataLogFile, fd, llvm::sys::fs::CreationDisposition::CD_CreateAlways, llvm::sys::fs::OpenFlags::F_Text))
        {
            llvm::errs() << "failed to open compile log file"
                         << "\n";
            exit(ec.value());
        }
        else
        {
            llvm::errs() << "opened compile log file: " << dataLogFile << "\n";
            g_data_log = new llvm::raw_fd_ostream(fd, true);
            int json_fd = 0;
            std::string jsonFilePath(dataLogFile);
            jsonFilePath += ".json";
            if (std::error_code ec = llvm::sys::fs::openFileForWrite(
                    jsonFilePath, json_fd, llvm::sys::fs::CreationDisposition::CD_CreateAlways, llvm::sys::fs::OpenFlags::F_Text))
            {
                llvm::errs() << "failed to open json compile log file"
                             << "\n";
                exit(ec.value());
            }
            else
            {
                llvm::errs() << "opened json compile log file: " << dataLogFile << "\n";
                g_data_json = new llvm::raw_fd_ostream(json_fd, true);
            }
        }
    }
    else
    {
        g_data_log = &llvm::outs();
        g_data_json = &llvm::outs();
    }
}

void Analyzer::IncrementFunction(llvm::StringRef name)
{
    // write previous information to disk
    if (g_id != 0)
    {
        *g_data_log << "completed symbolizing function: " << fName.str() << "\n";
    }

    curContext.clear();
    fName = name;
    g_id += 1;
    cur_offset = 0;
    symbolized = false;
}

void Analyzer::AddInstructionPreSymbolize(const llvm::Instruction &i)
{
    if (!symbolized)
    {
        curContext.push_back(InstructionInfo(i.getOpcodeName(), cur_offset));
        InstructionInfo &ii = curContext.back();
        *g_data_log << "function: " << fName << " (" << g_id << "), instruction: " << i << ", offset: " << ii.offset << "\n";
        symbolized = true;
    }
}

void Analyzer::AddInstructionPostSymbolize(const llvm::Instruction &i)
{
    if (symbolized)
    {
        curContext.push_back(InstructionInfo(i.getOpcodeName(), cur_offset));
        InstructionInfo &ii = curContext.back();
        *g_data_log << "(SYMBOLIZED) function: " << fName << " (" << g_id << "), instruction: " << i << ", offset: " << ii.offset << "\n";
        symbolized = false;
        cur_offset += 1;
    }
}

// creating a copy of the struct is inefficient here...
SymbolicComputationAnalyzer Analyzer::AddSymbolicComputation(llvm::Instruction *firstInstruction,
                                                             llvm::Instruction *lastInstruction,
                                                             llvm::SmallVector<Symbolizer::Input, 2> inputs)
{
    return SymbolicComputationAnalyzer(firstInstruction, lastInstruction, inputs, *this);
}

void SymbolicComputationAnalyzer::runtimeCheck(bool check)
{
    check_ = check;
}

void SymbolicComputationAnalyzer::assertSymbolic()
{
    isGuaranteedSymbolic_ = true;
}

void SymbolicComputationAnalyzer::complete()
{
    *(instance_.g_data_log) << "check is: " << check_ << "\n";
    if (isGuaranteedSymbolic_)
    {
        *(instance_.g_data_log) << "Computation is definitely symbolic!"
                                << "\n";
    }
    else
    {
        *(instance_.g_data_log) << "Couldn't use symbolic heuristic"
                                << "\n";
    }
    *(instance_.g_data_log) << "\nComputation starting at " << *firstInstruction_
                            << "\n...ending at " << *lastInstruction_
                            << "\n...with inputs:\n";
    for (const auto &input : inputs_)
    {
        *(instance_.g_data_log) << '\t' << *input.concreteValue << '\n';
    }
    llvm::CallInst *cInst = llvm::cast<llvm::CallInst, llvm::Instruction>(firstInstruction_);

    /*
    std::map<std::string, int> call_count;
    std::map<std::string, std::vector<CompInfo>> call_descrips;
    */
    llvm::StringRef fName = cInst->getCalledFunction()->getName();
    instance_.call_count.try_emplace(fName, 0);
    if (instance_.call_descrips.find(fName) == instance_.call_descrips.end())
    {
        instance_.call_descrips.try_emplace(fName, std::vector<CompInfo>());
    }
    instance_.call_count[fName] += 1;
    CompInfo c(cInst, isGuaranteedSymbolic_, check_);
    instance_.call_descrips[fName].push_back(c);
}

SymbolicComputationAnalyzer::SymbolicComputationAnalyzer(llvm::Instruction *firstInstruction,
                                                         llvm::Instruction *lastInstruction,
                                                         llvm::SmallVector<Symbolizer::Input, 2> inputs,
                                                         Analyzer &instance)
    : firstInstruction_(firstInstruction), lastInstruction_(lastInstruction), inputs_(inputs), instance_(instance)
{
}

void Analyzer::Finalize(llvm::Module &M)
{
    *g_data_log << "\nFinished module:\n"
                << M << "\n";
    g_data_log->flush();
    *g_data_json << "\n"
                 << "{\n\"calls\": {\n";

    bool comma = false;

    for (llvm::StringMap<int>::iterator it = call_count.begin(); it != call_count.end(); it++)
    {
        if (comma)
        {
            *g_data_json << ",\n";
        }
        *g_data_json << "\"" << it->first() << "\": " << it->getValue();
        comma = true;
    }
    *g_data_json << "},\n";

    comma = false;
    for (llvm::StringMap<std::vector<CompInfo>>::iterator it = call_descrips.begin(); it != call_descrips.end(); it++)
    {
        if (comma)
        {
            *g_data_json << ",\n";
        }
        *g_data_json << "\"" << it->first() << "\": [";
        bool inner_comma = false;
        for (auto cd : it->getValue())
        {
            if (inner_comma)
            {
                *g_data_json << ",\n";
            }
            *g_data_json << "{ \"runtime_check\": " << cd.check << ",\n"
                         << "\"concrete\": " << cd.concrete << ",\n"
                         << "\"function\": \"" << *cd.instruction << "\"}";
            inner_comma = true;
        }
        *g_data_json << "]";
        comma = true;
    }
    *g_data_json << "}";

    g_data_json->flush();
}