##
## EPITECH PROJECT, 2018
## Makefile
## File description:
## Compiles programm
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

SRC_PATH	=	src/

CLOCK_PATH	=	$(SRC_PATH)clock/

SRC		=	$(CLOCK_PATH)clock.c	\
			$(SRC_PATH)main.c

OBJ		=	$(SRC:.c=.o)

NAME		=	captain_workout

LIB_FILE	=	-L ./lib/lib_file -lfile

LIB_STRING	=	-L ./lib/lib_string -lstring

LIB_PARSING	=	-L ./lib/lib_parsing -lparsing

LIB		=	$(LIB_FILE) $(LIB_STRING) $(LIB_PARSING)

INCLUDE		=	-I include/

CFLAGS		=	-W -Wall -Werror -Wextra $(INCLUDE)

all:	$(NAME)

mk_message:
	@$(ECHO) $(BOLD_T)$(LIGHT_GREEN)" @@@@@@@   @@@@@@   @@@@@@@   @@@@@@@   @@@@@@   @@@  @@@  @@@"$(DEFAULT)
	@$(ECHO) $(BOLD_T)$(LIGHT_GREEN)"@@@@@@@@  @@@@@@@@  @@@@@@@@  @@@@@@@  @@@@@@@@  @@@  @@@@ @@@"$(DEFAULT)
	@$(ECHO) $(BOLD_T)$(LIGHT_GREEN)"!@@       @@!  @@@  @@!  @@@    @@!    @@!  @@@  @@!  @@!@!@@@"$(DEFAULT)
	@$(ECHO) $(BOLD_T)$(LIGHT_GREEN)"!@!       !@!  @!@  !@!  @!@    !@!    !@!  @!@  !@!  !@!!@!@!"$(DEFAULT)
	@$(ECHO) $(BOLD_T)$(LIGHT_GREEN)"!@!       @!@!@!@!  @!@@!@!     @!!    @!@!@!@!  !!@  @!@ !!@!"$(DEFAULT)
	@$(ECHO) $(BOLD_T)$(GREEN_C)"!!!       !!!@!!!!  !!@!!!      !!!    !!!@!!!!  !!!  !@!  !!!"$(DEFAULT)
	@$(ECHO) $(BOLD_T)$(GREEN_C)":!!       !!:  !!!  !!:         !!:    !!:  !!!  !!:  !!:  !!!"$(DEFAULT)
	@$(ECHO) $(BOLD_T)$(GREEN_C)":!:       :!:  !:!  :!:         :!:    :!:  !:!  :!:  :!:  !:!"$(DEFAULT)
	@$(ECHO) $(BOLD_T)$(GREEN_C)" ::: :::  ::   :::   ::          ::    ::   :::   ::   ::   ::"$(DEFAULT)
	@$(ECHO) $(BOLD_T)$(GREEN_C)" :: :: :   :   : :   :           :      :   : :  :    ::    :  "$(DEFAULT)
	@$(ECHO) ""$(DEFAULT)
	@$(ECHO) $(BOLD_T)$(LIGHT_GREEN)"@@@  @@@  @@@   @@@@@@   @@@@@@@   @@@  @@@   @@@@@@   @@@  @@@  @@@@@@@  "$(DEFAULT)
	@$(ECHO) $(BOLD_T)$(LIGHT_GREEN)"@@@  @@@  @@@  @@@@@@@@  @@@@@@@@  @@@  @@@  @@@@@@@@  @@@  @@@  @@@@@@@  "$(DEFAULT)
	@$(ECHO) $(BOLD_T)$(LIGHT_GREEN)"@@!  @@!  @@!  @@!  @@@  @@!  @@@  @@!  !@@  @@!  @@@  @@!  @@@    @@!    "$(DEFAULT)
	@$(ECHO) $(BOLD_T)$(LIGHT_GREEN)"!@!  !@!  !@!  !@!  @!@  !@!  @!@  !@!  @!!  !@!  @!@  !@!  @!@    !@!    "$(DEFAULT)
	@$(ECHO) $(BOLD_T)$(LIGHT_GREEN)"@!!  !!@  @!@  @!@  !@!  @!@!!@!   @!@@!@!   @!@  !@!  @!@  !@!    @!!    "$(DEFAULT)
	@$(ECHO) $(BOLD_T)$(GREEN_C)"!@!  !!!  !@!  !@!  !!!  !!@!@!    !!@!!!    !@!  !!!  !@!  !!!    !!!    "$(DEFAULT)
	@$(ECHO) $(BOLD_T)$(GREEN_C)"!!:  !!:  !!:  !!:  !!!  !!: :!!   !!: :!!   !!:  !!!  !!:  !!!    !!:    "$(DEFAULT)
	@$(ECHO) $(BOLD_T)$(GREEN_C)":!:  :!:  :!:  :!:  !:!  :!:  !:!  :!:  !:!  :!:  !:!  :!:  !:!    :!:    "$(DEFAULT)
	@$(ECHO) $(BOLD_T)$(GREEN_C)" :::: :: :::   ::::: ::  ::   :::   ::  :::  ::::: ::  ::::: ::     ::    "$(DEFAULT)
	@$(ECHO) $(BOLD_T)$(GREEN_C)"  :: :  : :     : :  :    :   : :   :   :::   : :  :    : :  :      :     "$(DEFAULT)
	@$(ECHO) ""$(DEFAULT)

lib:
	@make --no-print-directory -C lib/lib_file/
	@make --no-print-directory -C lib/lib_string/

$(NAME):	lib mk_message $(OBJ)
	@gcc -o $(NAME) $(OBJ) $(LIB) $(INCLUDE)

clean:
	@make --no-print-directory -C ./lib/lib_file/ clean
	@make --no-print-directory -C ./lib/lib_string/ clean
	@make --no-print-directory -C ./lib/lib_parsing/ clean
	@rm -f $(OBJ)
	@rm -f \#*\#
	@rm -f *~
	@rm -f vgcore.*

fclean:	clean
	@make --no-print-directory -C lib/lib_file/ fclean
	@make --no-print-directory -C lib/lib_string/ fclean
	@make --no-print-directory -C lib/lib_parsing/ fclean
	@rm -f $(NAME)

re:	fclean all

.PHONY:	clean fclean re lib all
.SILENT:	$(OBJ)
