/*
** CAPTAIN PROJECT, 2019
** parsing.h
** File description:
** header of libparsing
*/

#ifndef PARSING_H
#define PARSING_H

#define HELP "-h"
#define L_HELP "--help"
#define TIME "-t"
#define L_TIME "--time"
#define DIFF "-d"
#define L_DIFF "--difficulty"
#define NB_FLAG 6

extern const char *flags[];

char **get_flags(char **args);

#endif /* !PARSING_H */
