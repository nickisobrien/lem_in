# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nobrien <nobrien@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/04/18 19:25:11 by jbrown            #+#    #+#              #
#    Updated: 2018/04/19 01:41:56 by nobrien          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = lem-in
RM = /bin/rm -f
CFLAGS = -Wall -Wextra -Werror

# lem_in
FILES = main util error parse_input parse_rooms parse_links algo pathing ant_movement
MAIN_INC = -I ./include/
SRC_DIR = ./src/
CFILES = $(patsubst %, $(SRC_DIR)%.c, $(FILES))
OFILES = $(patsubst %, %.o, $(FILES))

# libftprintf lib
LFT_DIR = ./libftprintf/
LFT_LIB = $(addprefix $(LFT_DIR), ftprintf.a)
LFT_INC = -I $(LFT_DIR)/include/
LFT_LINK = -L $(LFT_DIR) -l ftprintf

.PHONY: all clean fclean re

all: $(LFT_LIB) $(NAME)

$(OFILES):
	gcc $(CFLAGS) $(MAIN_INC) $(LFT_INC) -c $(CFILES)

$(LFT_LIB):
	make -C $(LFT_DIR)

$(NAME): $(OFILES)
	gcc $(CFLAGS) $(OFILES) $(LFT_LINK) -o $(NAME)

clean:
	@$(RM) $(OFILES)
	@make -C $(LFT_DIR) clean

fclean: clean
	@$(RM) $(NAME)
	@make -C $(LFT_DIR) fclean

re: fclean all

rel:
	@$(RM) $(NAME)
	@$(RM) $(OFILES)
	@make
