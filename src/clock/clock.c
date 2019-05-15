/*
** CAPTAIN PROJECT, 2019
** clock.c
** File description:
** return an int++ at each call
*/

int clock(int act_val, int max_val)
{
    return (act_val + 1 <= max_val) ? act_val++ : 0;
}
