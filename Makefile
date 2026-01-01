NAME    = programa
CC      = cc
CFLAGS  = -Wall -Wextra -Werror

# Na 42, você DEVE listar os arquivos um a um.
# Dica: No Vim, use :r !ls *.c para colá-los aqui rapidamente.
SRCS    = ft_strlen.c \
          ft_putstr.c \
          main.c

OBJS    = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(NAME)

# Regra para evitar o relink (verifica data do .c vs .o)
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
