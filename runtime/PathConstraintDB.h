#ifndef PATHCONSTRAINT_DB_H
#define PATHCONSTRAINT_DB_H

#include "vector"
#include "string"
#include "sstream"
#include "map"

#include <sqlite3.h>

enum ConstraintErrorReason {
  TIMEOUT = 0,
  CANCELED,
  NONE
};

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
    int push_instrumented_path_constraint(const std::string& constraint_smt, int program_run, int constraint_index, int negated);
    // push an unsat path constraint, return status
    int push_instrumented_unsat_constraint(const std::string& constraint_smt, int program_run, int constraint_index, int negated);
    // push a timed out path constraint, return status
    int push_instrumented_error_constraint(const std::string& constraint_smt, int program_run, int constraint_index, ConstraintErrorReason reason, int negated);
    // libc version of normal path constraint
    int push_libc_path_constraint(const std::string& constraint_smt, const std::string& func, int negated);
    // libc version of normal unsat constraint
    int push_libc_unsat_constraint(const std::string& constraint_smt, const std::string& func, int negated);
    // libc version of normal timeout constraint
    int push_libc_error_constraint(const std::string& constraint_smt, const std::string& func, ConstraintErrorReason reason, int negated);

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
