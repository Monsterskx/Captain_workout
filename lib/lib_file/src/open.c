/*
** CAPTAIN PROJECT, 2019
** open_it.c
** File description:
** open file or dir
*/

#include <sys/types.h>
#include <dirent.h>
#include <sys/stat.h>
#include <stddef.h>
#include <stdlib.h>
#include <fcntl.h>
#include "file.h"

void *open_it(const char *pathname)
{
    int is_dir_or_file = dir_or_file(pathname);
    int *fd_open = malloc(sizeof(int));

    if (is_dir_or_file == 0 && fd_open) {
        fd_open[0] = open(pathname, O_RDONLY);
        return fd_open;
    }
    if (is_dir_or_file == 1 && fd_open)
        return opendir(pathname);
    return NULL;
}
