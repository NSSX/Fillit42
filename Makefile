# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: avella <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/11/26 16:17:03 by avella            #+#    #+#              #
#    Updated: 2015/11/27 12:09:02 by avella           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fillit

CC = gcc

FLAGS = -Wall -Wextra -Werror

SRC= all_malloc.c all_try.c parcour.c placement.c libftfunc.c /
	usefull_func.c ft_try_form.c other_func.c main.c

OBJ= $(SRC:.c=.o)

all : $(NAME)

$(NAME): $(OBJ)

$(OBJ): $(CC) $(FLAGS) $(SRC)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all
