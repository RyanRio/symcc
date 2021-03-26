#ifndef ANALYZER_H
#define ANALYZER_H

#include <llvm/ADT/SmallVector.h>
#include <llvm/ADT/StringMap.h>
#include <llvm/IR/InstIterator.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/Verifier.h>
#include <llvm/Transforms/Utils/ModuleUtils.h>

#include "Runtime.h"
#include "vector"
#include "string"
#include "sstream"
#include "map"

#include "Symbolizer.h"

// serialized symbolic computation
struct CompInfo
{
    llvm::CallInst* instruction;
    bool concrete;
    bool check;

    CompInfo(llvm::CallInst* i, bool conc, bool c)
        : instruction(i), concrete(conc), check(c) {}
};

struct InstructionInfo
{
    llvm::StringRef opcode;
    int offset;

    InstructionInfo(const llvm::StringRef &opcode, int offset) : opcode(opcode), offset(offset) {}
};

class Analyzer;

// provides specific utility for handling symbolic computations
class SymbolicComputationAnalyzer
{
public:
    friend class Analyzer;

    // insert concreteness check
    void runtimeCheck(bool inserted);
    // assert as symbolic, ie skip expression generation for concreteness check
    void assertSymbolic();

    // complete analysis of this symbolic computation
    void complete();

private:
    llvm::Instruction *firstInstruction_ = nullptr;
    llvm::Instruction *lastInstruction_ = nullptr;
    llvm::SmallVector<Symbolizer::Input, 2> inputs_;
    Analyzer &instance_;
    SymbolicComputationAnalyzer(llvm::Instruction *firstInstruction,
                                llvm::Instruction *lastInstruction,
                                llvm::SmallVector<Symbolizer::Input, 2> inputs,
                                Analyzer &instance);
    int id_;
    bool check_;
    bool isGuaranteedSymbolic_;
};

class Analyzer
{
public:
    friend class SymbolicComputationAnalyzer;

    static Analyzer &instance();

    void IncrementFunction(llvm::StringRef name);

    // add instruction pre symbolize
    void AddInstructionPreSymbolize(const llvm::Instruction &i);

    // add instruction post symbolize
    void AddInstructionPostSymbolize(const llvm::Instruction &i);

    // adds a symbolic computation
    SymbolicComputationAnalyzer AddSymbolicComputation(llvm::Instruction *firstInstruction,
                                                       llvm::Instruction *lastInstruction,
                                                       llvm::SmallVector<Symbolizer::Input, 2> inputs);

    // performs any wrapup needed before a module is finalized
    void Finalize(llvm::Module &M);

    Analyzer(const Analyzer &) = delete;
    void operator=(const Analyzer &) = delete;

private:
    llvm::raw_ostream *g_data_log = nullptr;
    llvm::raw_ostream *g_data_json = nullptr;
    int cur_offset = 0;
    int g_id = 0;            // function identifier
    bool symbolized = false; // whether an incoming instruction is symbolized
    llvm::StringRef fName;
    std::vector<InstructionInfo> curContext;
    /*
    json format of analysis
    {
        calls: {
            "symbolic_backend_call": int,
            .
            .
            .
        },
        symbolic_backend_call: [
            {
                runtime_check: bool,
                concrete: bool,
                function: str
            }
        ]
    }
    */
    llvm::StringMap<int> call_count;
    llvm::StringMap<std::vector<CompInfo>> call_descrips;
    Analyzer();

    int print();
};

#endif