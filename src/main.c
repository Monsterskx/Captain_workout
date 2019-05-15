/*
** CAPTAIN PROJECT, 2019
** main.c
** File description:
** main of Capitain_workout
*/

#include <stdio.h>
#include "file.h"
#include "parsing.h"

int main(int ac, char **av)
{
    char **pars_list = NULL;

    if (ac == 1)
        printf("try to launch ./captain_workout -h to have some help\n");
    if (ac >= 2)
        pars_list = get_flags(av);
    for (int i = 0; pars_list; i++)
        printf("[%s]\n", pars_list[i]);
    return 0;
}
