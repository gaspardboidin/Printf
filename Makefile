# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gaboidin <gaboidin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/12/16 20:02:31 by gaboidin          #+#    #+#              #
#    Updated: 2024/12/16 22:42:16 by gaboidin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Makefile pour ft_printf
CC = gcc
CFLAGS = -Wall -Wextra -Werror
NAME = libftprintf.a
SRCS = ft_printf.c ft_handler.c ft_handler2.c ft_parser.c
OBJS = $(SRCS:.c=.o)

# Chemin vers Libft
LIBFT_DIR = libft
LIBFT = $(LIBFT_DIR)/libft.a

all: $(NAME)

# Compiler ft_printf et lier avec libft.a
$(NAME): $(OBJS)
	@make -C $(LIBFT_DIR)         # Compile Libft si ce n'est pas fait
	ar rcs $(NAME) $(OBJS)        # Crée libftprintf.a

clean:
	@make clean -C $(LIBFT_DIR)
	rm -f $(OBJS)

fclean: clean
	@make fclean -C $(LIBFT_DIR)
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re

