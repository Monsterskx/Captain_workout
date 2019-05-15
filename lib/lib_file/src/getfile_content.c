/*
** CAPTAIN PROJECT, 2019
** getfile_content.c
** File description:
** get the content of a file
*/

#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <stddef.h>
#include <unistd.h>
#include <fcntl.h>
#include "file.h"

char *getfile_content(char *filepath)
{
    struct stat *st = init_stat(filepath);
    int fd = open(filepath, O_RDONLY);
    char *buffer = NULL;

    if (!st || fd == -1)
        return NULL;
    buffer = malloc(sizeof(char) * st->st_size + 1);
    buffer[st->st_size] = '\0';
    read(fd, buffer, st->st_size);
    return buffer;
}
