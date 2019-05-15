/*
** CAPTAIN PROJECT, 2019
** dir_or_file.c
** File description:
** check with the filepath if it's a file or a dir
*/

#include <unistd.h>
#include <sys/types.h>
#include <dirent.h>

int dir_or_file(const char *pathname)
{
    DIR *dir = opendir(pathname);

    if (access(pathname, F_OK) == 0)
        return 0;
    if (!dir) {
        closedir(dir);
        return -1;
    }
    return 1;
}
