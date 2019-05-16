/*
** CAPTAIN PROJECT, 2019
** parsing.h
** File description:
** header of libparsing
*/

#ifndef ___PARSING_H
#define ___PARSING_H

#define HELP "-h"
#define L_HELP "--help"
#define TIME "-t"
#define L_TIME "--time"
#define DIFF "-d"
#define L_DIFF "--difficulty"
#define NBEXO "-n"
#define L_NBEXO "--number"
#define NB_FLAG 8

char **get_flags(char **args);

#endif /* !PARSING_H */
