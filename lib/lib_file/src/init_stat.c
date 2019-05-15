/*
** EPITECH PROJECT, 2019
** init_stat.c
** File description:
** return a pointer to a struct stat of a file
*/

#include <sys/types.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <unistd.h>
#include <stddef.h>

struct stat *init_stat(char *filepath)
{
    struct stat *statbuf = malloc(sizeof(struct stat));

    if (!statbuf)
        return NULL;
    if (stat(filepath, statbuf) == -1)
        return NULL;
    return (statbuf);
}
