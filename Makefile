# Makefile pour ft_printf
CC = gcc
CFLAGS = -Wall -Wextra -Werror
NAME = libftprintf.a
SRCS = ft_printf.c
OBJS = $(SRCS:.c=.o)

# Chemin vers Libft
LIBFT_DIR = libft
LIBFT = $(LIBFT_DIR)/libft.a

all: $(NAME)

# Compiler ft_printf et lier avec libft.a
$(NAME): $(OBJS)
	@make -C $(LIBFT_DIR)         # Compile Libft si ce n'est pas fait
	$(CC) -c $(CFLAGS) $(SRCS)    # Compile ft_printf.c
	ar rcs $(NAME) $(OBJS)        # Crée libftprintf.a
	ar rcs $(NAME) $(LIBFT)       # Ajoute libft.a dans libftprintf.a

clean:
	@make clean -C $(LIBFT_DIR)
	rm -f $(OBJS)

fclean: clean
	@make fclean -C $(LIBFT_DIR)
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
