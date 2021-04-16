#include "Analyzer.h"

/**
stores into p_store whether the count(*) operation found any rows
*/
static int count_star_cb(void *p_store [[maybe_unused]], int num_cols [[maybe_unused]], char **column_texts, char **column_names [[maybe_unused]])
{
    int *store = (int *)p_store;
    if (num_cols > 0) {
        *store = std::stoi(column_texts[0]);
    }
    else {
      *store = 0;
    }
    return 0;
}

/**
Returns the max current path constraint or -1 if none exist for the given params
*/
[[maybe_unused]]
static int max_path_constraint(sqlite3* db, const char *target, const char* arch, const char *runtime)
{
  std::stringstream ss;
  ss << "select count(*) from symcc_compile_run where "
     << "target_name='" << target << "' and "
     << "run_arch='" << arch << "' and "
     << "run_runtime='" << runtime << "';";
   int rc;
   char *err_msg;
   int store;
   rc = sqlite3_exec(db, ss.str().c_str(), &count_star_cb, &store, &err_msg);
   if (err_msg != NULL)
   {
       printf("exec error: %s\n", err_msg);
       return -1;
   }
   else
   {
     return store;
   }
}

static int insert_run(sqlite3 *db, const char *target, const char *arch, const char *runtime)
{
    std::stringstream ss;
    ss << "INSERT INTO symcc_compile_run VALUES("
       << "'" << target << "',"
       << "'" << arch << "',"
       << "'" << runtime << "'"
       << ");";

    int rc;
    char *err_msg;
    rc = sqlite3_exec(db, ss.str().c_str(), NULL, NULL, &err_msg);
    if (err_msg != NULL)
    {
        printf("exec error: %s\n", err_msg);
    }
    return rc;
}

static int max_run_cb(void *p_store [[maybe_unused]], int num_cols [[maybe_unused]], char **column_texts, char **column_names [[maybe_unused]])
{
    int *store = (int *)p_store;
    if (num_cols > 0) {
        *store = std::stoi(column_texts[0]);
    }
    else {
      *store = -1;
      return 1;
    }
    return 0;
}

static int max_run(sqlite3 *db, const char *target, const char *arch, const char *runtime)
{
    std::stringstream ss;
    ss << "select max(rowid) from symcc_compile_run where "
       << "target_name='" << target << "' and "
       << "run_arch='" << arch << "' and "
       << "run_runtime='" << runtime << "';";

    int rc;
    char *err_msg;
    int store;
    rc = sqlite3_exec(db, ss.str().c_str(), &max_run_cb, &store, &err_msg);
    if (err_msg != NULL)
    {
        printf("exec error: %s\n", err_msg);
        return -1;
    }
    else
    {
        return store;
    }
}

static bool contains_runs(sqlite3 *db, const char *target, const char *arch, const char *runtime)
{
  std::stringstream ss;
  ss << "select count(*) from symcc_compile_run where "
     << "target_name='" << target << "' and "
     << "run_arch='" << arch << "' and "
     << "run_runtime='" << runtime << "';";
   int rc;
   char *err_msg;
   int store;
   rc = sqlite3_exec(db, ss.str().c_str(), &count_star_cb, &store, &err_msg);
   if (err_msg != NULL)
   {
       printf("exec error: %s\n", err_msg);
       return false;
   }
   else
   {
       return store > 0;
   }
}

static int drop_run(sqlite3 *db, const char *target, const char *arch, const char *runtime)
{
  std::stringstream ss;
  ss << "delete from symcc_compile_run where "
     << "target_name='" << target << "' and "
     << "run_arch='" << arch << "' and "
     << "run_runtime='" << runtime << "';";
   int rc;
   char *err_msg;
   int store;
   rc = sqlite3_exec(db, ss.str().c_str(), &count_star_cb, &store, &err_msg);
   if (err_msg != NULL)
   {
       printf("exec error: %s\n", err_msg);
   }
   return rc;
}

std::pair<int, int> Analyzer::push_path_constraint(llvm::StringRef constraint_name)
{
    recent_path_constraint += 1;
    int run = current_program_run;
    if (run != -1)
    {
        std::string str;
        llvm::raw_string_ostream output(str);
        output << "INSERT INTO compile_path_constraint VALUES("
           << "'" << constraint_name << "',"
           << "" << current_program_run << ","
           << "'" << recent_path_constraint << "'"
           << ");";

        int rc;
        char *err_msg;
        rc = sqlite3_exec(m_db, output.str().c_str(), NULL, NULL, &err_msg);
        if (err_msg != NULL)
        {
            printf("exec error: %s\n", err_msg);
        }
    }

    return std::pair<int, int>(current_program_run, recent_path_constraint);
}

Analyzer &Analyzer::instance()
{
    static Analyzer *instance = new Analyzer();
    return *instance;
}

Analyzer::Analyzer()
{
}

int Analyzer::startUp(const std::string& moduleName)
{
    const char* name = moduleName.c_str();
    sqlite3 *db;
    int rc;
    rc = sqlite3_open_v2("file:/home/savethefishes/Documents/RyanRio/symcc/symcc-builds/mods/path_constraints.db", &db, SQLITE_OPEN_READWRITE | SQLITE_OPEN_URI, NULL);

    if (rc)
    {
        fprintf(stderr, "Can't open database: %s\n", sqlite3_errmsg(db));
        shutDown();
        return 1;
    }

    m_db = db;

    if (contains_runs(m_db, name, "amd64", "qsym")) {
      drop_run(m_db, name, "amd64", "qsym");
    }

    rc = insert_run(m_db, name, "amd64", "qsym");
    if (rc) {
      fprintf(stderr, "Can't insert run: %s\n", sqlite3_errmsg(db));
      shutDown();
      return 1;
    }
    current_program_run = max_run(m_db, name, "amd64", "qsym");

    return 0;
}

int Analyzer::shutDown()
{
    sqlite3_close(m_db);
    return 0;
}

// void Analyzer::IncrementFunction(llvm::StringRef name)
// {
//     // write previous information to disk
//     if (g_id != 0)
//     {
//         *g_data_log << "completed symbolizing function: " << fName.str() << "\n";
//     }

//     curContext.clear();
//     fName = name;
//     g_id += 1;
//     cur_offset = 0;
//     symbolized = false;
// }

// void Analyzer::AddInstructionPreSymbolize(const llvm::Instruction &i)
// {
//     if (!symbolized)
//     {
//         curContext.push_back(InstructionInfo(i.getOpcodeName(), cur_offset));
//         InstructionInfo &ii = curContext.back();
//         *g_data_log << "function: " << fName << " (" << g_id << "), instruction: " << i << ", offset: " << ii.offset << "\n";
//         symbolized = true;
//     }
// }

// void Analyzer::AddInstructionPostSymbolize(const llvm::Instruction &i)
// {
//     if (symbolized)
//     {
//         curContext.push_back(InstructionInfo(i.getOpcodeName(), cur_offset));
//         InstructionInfo &ii = curContext.back();
//         *g_data_log << "(SYMBOLIZED) function: " << fName << " (" << g_id << "), instruction: " << i << ", offset: " << ii.offset << "\n";
//         symbolized = false;
//         cur_offset += 1;
//     }
// }

// // creating a copy of the struct is inefficient here...
// SymbolicComputationAnalyzer Analyzer::AddSymbolicComputation(llvm::Instruction *firstInstruction,
//                                                              llvm::Instruction *lastInstruction,
//                                                              llvm::SmallVector<Symbolizer::Input, 2> inputs)
// {
//     return SymbolicComputationAnalyzer(firstInstruction, lastInstruction, inputs, *this);
// }

// void SymbolicComputationAnalyzer::runtimeCheck(bool check)
// {
//     check_ = check;
// }

// void SymbolicComputationAnalyzer::assertSymbolic()
// {
//     isGuaranteedSymbolic_ = true;
// }

// void SymbolicComputationAnalyzer::complete()
// {
//     *(instance_.g_data_log) << "check is: " << check_ << "\n";
//     if (isGuaranteedSymbolic_)
//     {
//         *(instance_.g_data_log) << "Computation is definitely symbolic!"
//                                 << "\n";
//     }
//     else
//     {
//         *(instance_.g_data_log) << "Couldn't use symbolic heuristic"
//                                 << "\n";
//     }
//     *(instance_.g_data_log) << "\nComputation starting at " << *firstInstruction_
//                             << "\n...ending at " << *lastInstruction_
//                             << "\n...with inputs:\n";
//     for (const auto &input : inputs_)
//     {
//         *(instance_.g_data_log) << '\t' << *input.concreteValue << '\n';
//     }
//     llvm::CallInst *cInst = llvm::cast<llvm::CallInst, llvm::Instruction>(firstInstruction_);

//     /*
//     std::map<std::string, int> call_count;
//     std::map<std::string, std::vector<CompInfo>> call_descrips;
//     */
//     llvm::StringRef fName = cInst->getCalledFunction()->getName();
//     instance_.call_count.try_emplace(fName, 0);
//     if (instance_.call_descrips.find(fName) == instance_.call_descrips.end())
//     {
//         instance_.call_descrips.try_emplace(fName, std::vector<CompInfo>());
//     }
//     instance_.call_count[fName] += 1;
//     CompInfo c(cInst, isGuaranteedSymbolic_, check_);
//     instance_.call_descrips[fName].push_back(c);
// }

// SymbolicComputationAnalyzer::SymbolicComputationAnalyzer(llvm::Instruction *firstInstruction,
//                                                          llvm::Instruction *lastInstruction,
//                                                          llvm::SmallVector<Symbolizer::Input, 2> inputs,
//                                                          Analyzer &instance)
//     : firstInstruction_(firstInstruction), lastInstruction_(lastInstruction), inputs_(inputs), instance_(instance)
// {
// }

// void Analyzer::Finalize(llvm::Module &M)
// {
//     *g_data_log << "\nFinished module:\n"
//                 << M << "\n";
//     g_data_log->flush();
//     *g_data_json << "\n"
//                  << "{\n\"calls\": {\n";

//     bool comma = false;

//     for (llvm::StringMap<int>::iterator it = call_count.begin(); it != call_count.end(); it++)
//     {
//         if (comma)
//         {
//             *g_data_json << ",\n";
//         }
//         *g_data_json << "\"" << it->first() << "\": " << it->getValue();
//         comma = true;
//     }
//     *g_data_json << "},\n";

//     comma = false;
//     for (llvm::StringMap<std::vector<CompInfo>>::iterator it = call_descrips.begin(); it != call_descrips.end(); it++)
//     {
//         if (comma)
//         {
//             *g_data_json << ",\n";
//         }
//         *g_data_json << "\"" << it->first() << "\": [";
//         bool inner_comma = false;
//         for (auto cd : it->getValue())
//         {
//             if (inner_comma)
//             {
//                 *g_data_json << ",\n";
//             }
//             *g_data_json << "{ \"runtime_check\": " << cd.check << ",\n"
//                          << "\"concrete\": " << cd.concrete << ",\n"
//                          << "\"function\": \"" << *cd.instruction << "\"}";
//             inner_comma = true;
//         }
//         *g_data_json << "]";
//         comma = true;
//     }
//     *g_data_json << "}";

//     g_data_json->flush();
// }
