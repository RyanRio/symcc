#include "PathConstraintDB.h"

static int insert_path_constraint(sqlite3 *db, const char *constraint_smt, const int compile_constraint, const char* constraint_table)
{
  std::stringstream ss;
  ss << "INSERT INTO " << constraint_table << " VALUES("
     << "" << compile_constraint << ","
     << "'" << constraint_smt << "'"
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
static int insert_unsat_path_constraint(sqlite3 *db, const char *constraint_smt, const int compile_constraint)
{
  return insert_path_constraint(db, constraint_smt, compile_constraint, "unsat_path_constraint");
}

static int insert_timeout_path_constraint(sqlite3 *db, const char *constraint_smt, const int compile_constraint)
{
  return insert_path_constraint(db, constraint_smt, compile_constraint, "timeout_path_constraint");
}

static int insert_runtime_path_constraint(sqlite3 *db, const char *constraint_smt, const int compile_constraint)
{
  return insert_path_constraint(db, constraint_smt, compile_constraint, "runtime_path_constraint");
}

// callback for getting the compile constraint for a particular run
static int get_compile_path_constraint_cb(void *p_store, int num_cols, char **column_texts, char **column_names [[maybe_unused]])
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

// get the compile constraint for a particular run
int PathConstraintDB::get_compile_path_constraint(int run_id, int constraint_index)
{
    auto map_lookup = compile_constraints.find(std::pair<int, int>(run_id, constraint_index));
    if (map_lookup != compile_constraints.end()) {
      return map_lookup->second;
    }

    std::stringstream ss;
    ss << "select rowid from compile_path_constraint where "
       << "run_id=" << run_id << " and "
       << "constraint_index=" << constraint_index
       << ";";

    int rc;
    char *err_msg;
    int store;
    rc = sqlite3_exec(m_db, ss.str().c_str(), &get_compile_path_constraint_cb, &store, &err_msg);
    if (err_msg != NULL)
    {
        printf("exec error: %s\n", err_msg);
        return -1;
    }
    else
    {
        compile_constraints[{run_id, constraint_index}] = store;
        return store;
    }
}

int PathConstraintDB::push_path_constraint(const std::string& constraint_smt, int program_run, int constraint_index)
{
    if (program_run != -1) {
      int compile_constraint = get_compile_path_constraint(program_run, constraint_index);
      if (compile_constraint >= 0) {
        int rc = insert_runtime_path_constraint(m_db, constraint_smt.c_str(), compile_constraint);
        return rc;
      }
    }

    return 1;
}

int PathConstraintDB::push_unsat_constraint(const std::string& constraint_smt, int program_run, int constraint_index)
{
    if (program_run != -1) {
      int compile_constraint = get_compile_path_constraint(program_run, constraint_index);
      if (compile_constraint >= 0) {
        int rc = insert_unsat_path_constraint(m_db, constraint_smt.c_str(), compile_constraint);
        return rc;
      }
    }

    return 1;
}


int PathConstraintDB::push_timeout_constraint(const std::string& constraint_smt, int program_run, int constraint_index)
{
    if (program_run != -1) {
      int compile_constraint = get_compile_path_constraint(program_run, constraint_index);
      if (compile_constraint >= 0) {
        int rc = insert_timeout_path_constraint(m_db, constraint_smt.c_str(), compile_constraint);
        return rc;
      }
    }

    return 1;
}

PathConstraintDB &PathConstraintDB::instance()
{
    static PathConstraintDB *instance = new PathConstraintDB();
    return *instance;
}

PathConstraintDB::PathConstraintDB()
{
  startUp();
}

int PathConstraintDB::startUp()
{
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
    return rc;
}

int PathConstraintDB::shutDown()
{
    sqlite3_close(m_db);
    return 0;
}
