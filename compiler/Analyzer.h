#ifndef ANALYZER_H
#define ANALYZER_H

#include <llvm/ADT/SmallVector.h>
#include <llvm/ADT/StringMap.h>
#include <llvm/IR/InstIterator.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/Verifier.h>
#include <llvm/Transforms/Utils/ModuleUtils.h>
#include <llvm/Support/Casting.h>
#include <llvm/Support/FileSystem.h>

#include "vector"
#include "string"
#include "sstream"
#include "map"

#include <sqlite3.h>

class Analyzer
{
public:

    // singleton
    static Analyzer &instance();
    Analyzer(const Analyzer &) = delete;
    void operator=(const Analyzer &) = delete;

    // start up an analyzer and make a database connection
    int startUp(const std::string& moduleName);
    // close down an analyzer and destory database connection
    int shutDown();

    // constraint functions
    // returns a pair of program run to constraint index
    std::pair<int, int> push_path_constraint(llvm::StringRef constraint_name);

private:
    // database
    sqlite3* m_db;
    int current_program_run = -1; // index into the database run table
    int recent_path_constraint = -1;
    Analyzer();

    // other vars
    // int cur_offset = 0;
    // int g_id = 0;            // function identifier
    // bool symbolized = false; // whether an incoming instruction is symbolized
    // llvm::StringRef fName;
    // std::vector<InstructionInfo> curContext;
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
    // llvm::StringMap<int> call_count;
    // llvm::StringMap<std::vector<CompInfo>> call_descrips;
};

#endif
