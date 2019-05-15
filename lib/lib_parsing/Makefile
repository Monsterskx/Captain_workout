##
## CAPTAIN PROJECT, 2018
## Makefile
## File description:
## compile lib_file
##

DEFAULT         =       "\e[0m"
BOLD_T          =       "\e[1m"
DIM_T           =       "\e[2m"
UNDLN_T         =       "\e[4m"
BLACK_C         =       "\e[30m"
RED_C           =       "\e[31m"
GREEN_C         =       "\e[32m"
YELLO_C         =       "\e[33m"
BLUE_C          =       "\e[34m"
MAGEN_C         =       "\e[35m"
CYAN_C          =       "\e[36m"
WHITE_C         =       "\e[97m"
DEFAULT_C       =       "\e[39m"
LIGHT_GREY      =       "\e[37m"
DARK_GREY       =       "\e[90m"
LIGHT_RED       =       "\e[91m"
LIGHT_GREEN     =       "\e[92m"
LIGHT_YELLO     =       "\e[93m"
LIGHT_BLUE      =       "\e[94m"
LIGHT_MAGEN     =       "\e[95m"
LIGHT_CYAN      =       "\e[96m"
ECHO            =       /bin/echo -e

NAME		=	libparsing.a

SRC_PATH	=	src/

SRC		=	$(SRC_PATH)pars_args.c

OBJ		=	$(SRC:.c=.o)

INCLUDE		=	-I ../../include/

CFLAGS		=	-W -Wall -Wextra -Werror $(INCLUDE)

all:	$(NAME)

$(NAME):	$(OBJ)
		@ar rc $(NAME) $(OBJ)
		@$(ECHO) $(BOLD_T)$(GREEN_C)"[✔] COMPILED:" $(DEFAULT)$(LIGHT_GREEN) "libparsing.a" $(DEFAULT) || $(ECHO) $(RED_C)$(BOLD_T)"[✘] "$(UNDLN_T)"BUILD FAILED:" $(LIGHT_RED) "libparsing.a"$(DEFAULT)
		@ranlib $(NAME)

clean:
	@rm -f $(OBJ)
	@rm -f \#*\#
	@rm -f *~

fclean:	clean
	@rm -f $(NAME)

re:	fclean all

.PHONY:	debug clean fclean re all
.SILENT: $(OBJ)
