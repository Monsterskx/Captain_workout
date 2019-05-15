/*
** CAPTAIN PROJECT, 2019
** pars_args.c
** File description:
** pars flags
*/

#include <stdlib.h>
#include <string.h>
#include "parsing.h"

const char *flags[] = {
    HELP,
    L_HELP,
    TIME,
    L_TIME,
    DIFF,
    L_DIFF
};

static int get_nb_args(char **args)
{
    int nb_str = 0;
    int i = 0;

    while (args[i]) {
        if (strcmp(args[i], "\0") == 0);
        else
            nb_str++;
        i++;
    }
    return nb_str;
}

static char **ne_flag_list(char **args)
{
    int nb_args = get_nb_args(args);
    char **ne_list = malloc(sizeof(char *) * nb_args);
    int next_arg = 0;

    for (int i = 0; args; i++) {
        if (strcmp(args[i], "\0") != 0) {
            ne_list[next_arg] = args[i];
            next_arg++;
        }
    }
    return ne_list;
}

char **get_flags(char **args)
{
    int i = 0;
    int j = 0;

    while (args[i + 1]) {
        while (j != NB_FLAG) {
            if (strcmp(args[i], flags[j]) == 0 && strcmp(args[i++], flags[j++]) != 0);
            else
                args[i] = strcpy(args[i], "\0");
        }
    }
    if (strcmp(args[i], flags[j]) == 0)
        args[i] = strcpy(args[i], "\0");
    return ne_flag_list(args);
}
