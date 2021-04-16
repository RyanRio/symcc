#ifndef PATHCONSTRAINT_DB_H
#define PATHCONSTRAINT_DB_H

#include "vector"
#include "string"
#include "sstream"
#include "map"

#include <llvm/ADT/SmallVector.h>
#include <llvm/ADT/StringMap.h>
#include <llvm/IR/InstIterator.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/Verifier.h>
#include <llvm/Transforms/Utils/ModuleUtils.h>
#include <llvm/Support/Casting.h>
#include <llvm/Support/FileSystem.h>

#include <sqlite3.h>

class PathConstraintDB
{
public:

    // creates an instance and starts up the database connection if one doesn't already exist
    static PathConstraintDB &instance();
    PathConstraintDB(const PathConstraintDB &) = delete;
    void operator=(const PathConstraintDB &) = delete;

    // close down an PathConstraintDB and destory database connection
    int shutDown();

    // constraint functions
    // pushes a path constraint, returning the status
    int push_path_constraint(const std::string& constraint_smt, int program_run, int constraint_index);
    // push an unsat path constraint, return status
    int push_unsat_constraint(const std::string& constraint_smt, int program_run, int constraint_index);
    // push a timed out path constraint, return status
    int push_timeout_constraint(const std::string& constraint_smt, int program_run, int constraint_index);

private:
    // database
    sqlite3* m_db;
    PathConstraintDB();
    // start up an PathConstraintDB and make a database connection
    int startUp();
    // memoize constraint rows
    std::map<std::pair<int, int>, int> compile_constraints;
    // get a compile path constraint
    int get_compile_path_constraint(int run_id, int constraint_index);
};

#endif
