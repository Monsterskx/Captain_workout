/*
** CAPTAIN PROJECT, 2019
** file.h
** File description:
** header of libfile
*/

#ifndef FILE_H
#define FILE_H

struct stat *init_stat(char *filepath);
char *getfile_content(char *filepath);
void *open_it(const char *pathname);
int dir_or_file(const char *pathname);

#endif /* !FILE_H */
