#include "tinyexpr.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#ifdef USE_READLINE
#include <readline/readline.h>
#include <readline/history.h>
#else
static char *readline(const char *prompt) {
    fprintf(stderr, "%s", prompt);
    char buf[1024];
    char *line = fgets(buf, sizeof(buf), stdin);
    if (line == NULL && feof(stdin)) {
        return NULL;
    } else if (line == NULL) {
        perror("fgets");
        return NULL;
    }

    size_t len = strlen(line);
    if (line[len - 1] == '\n') {
        line[len - 1] = '\0';
        len -= 1;
    }

    line = malloc(len + 1);
    strcpy(line, buf);
    return line;
}

static void add_history(const char *line) {}
#endif

static int eval(const char *str) {
    int err = 0;
    double r = te_interp(str, &err);
    if (err != 0) {
        printf("Error at position %i\n", err);
        return -1;
    } else {
        printf("%g\n", r);
        return 0;
    }
}

int main(int argc, char **argv) {
    FILE* fp;
    char* line = NULL;
    size_t len = 0;
    size_t read;

    fp = fopen(argv[1], "r");

    if (fp == NULL) {
        exit(EXIT_FAILURE);
    }

    while ((read = getline(&line, &len, fp)) != -1) {
        eval(line);
    }

    fclose(fp);
    if (line) {
        free(line);
    }
    return 1;
}
