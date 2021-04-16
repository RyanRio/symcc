#include <stdio.h>
#include <sqlite3.h>
#include <string>
#include <vector>
#include <algorithm>
#include <sstream>

template <typename T>
int compare_vectors(std::vector<T> vec1, std::vector<T> vec2)
{
    if (vec1.size() != vec2.size())
    {
        return 1;
    }
    else
    {
        for (int i = 0; i < vec1.size(); i++)
        {
            if (std::find(vec2.begin(), vec2.end(), vec1[i]) == vec2.end())
            {
                return 1;
            }
        }
    }
    return 0;
}

int test_archs(sqlite3 *db)
{
    printf("running test archs\n");
    std::vector<std::string> expected_archs = {"i386", "amd64"};
    std::vector<std::string> found_archs;

    sqlite3_stmt *stmt;

    sqlite3_prepare_v2(db, "SELECT * FROM archs", -1, &stmt, NULL);

    bool end_of_stmts = false;
    while (!end_of_stmts)
    {
        if (int result = sqlite3_step(stmt); result == SQLITE_ROW)
        {
            std::string s(reinterpret_cast<const char *>(sqlite3_column_text(stmt, 0)));
            found_archs.push_back(s);
        }
        else
        {
            end_of_stmts = true;
        }
    }

    sqlite3_finalize(stmt);

    return compare_vectors(expected_archs, found_archs);
}

int test_runtimes(sqlite3 *db)
{
    printf("running test runtimes\n");
    std::vector<std::string> expected_runtimes = {"z3", "qsym"};
    std::vector<std::string> found_runtimes;

    sqlite3_stmt *stmt;

    sqlite3_prepare_v2(db, "SELECT * FROM runtimes", -1, &stmt, NULL);

    bool end_of_stmts = false;
    while (!end_of_stmts)
    {
        if (int result = sqlite3_step(stmt); result == SQLITE_ROW)
        {
            std::string s(reinterpret_cast<const char *>(sqlite3_column_text(stmt, 0)));
            found_runtimes.push_back(s);
        }
        else
        {
            end_of_stmts = true;
        }
    }

    sqlite3_finalize(stmt);

    return compare_vectors(expected_runtimes, found_runtimes);
}

int test_cb(void*, int num_cols, char** column_texts, char** column_names) {
    for (int i = 0; i < num_cols; i++) {
        printf("column text: %s, column name: %s\n", column_texts[i], column_names[i]);
    }
    return 0;
}

int test_insert_run(sqlite3 *db)
{
    std::stringstream ss;
    ss << "INSERT INTO symcc_compile_run VALUES("
       << "'tinyexpr', "
       << "'amd64', "
       << "'qsym'"
       << ");";
    
    int rc;
    char* err_msg;
    rc = sqlite3_exec(db, ss.str().c_str(), &test_cb, NULL, &err_msg);
    if (err_msg != NULL) {
        printf("exec error: %s\n", err_msg);
    }
    return rc;
}

#define NUMTESTS 3

int (*tests[NUMTESTS])(sqlite3 *){test_archs, test_runtimes, test_insert_run};

int main(int argc, char **argv)
{
    sqlite3 *db;
    int rc;
    rc = sqlite3_open_v2("file:/home/savethefishes/Documents/RyanRio/symcc/symcc-builds/mods/path_constraints.db", &db, SQLITE_OPEN_READWRITE | SQLITE_OPEN_URI, NULL);

    if (rc)
    {
        fprintf(stderr, "Can't open database: %s\n", sqlite3_errmsg(db));
        sqlite3_close(db);
        return (1);
    }

    for (int i = 0; i < NUMTESTS; i++)
    {
        rc = tests[i](db);
        if (rc)
        {
            fprintf(stderr, "test encountered error: %s\n", sqlite3_errmsg(db));
            sqlite3_close(db);
            return (1);
        }
        else
        {
            fprintf(stdout, "test ran successfully\n");
        }
    }

    sqlite3_close(db);

    return 0;
}