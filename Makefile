NAME    = programa
CC      = gcc
CFLAGS  = -Wall -Wextra -Werror -I
RM      = rm -f

# Busca todos os arquivos .c e o header .h
SRCS    = $(wildcard *.c)
DEPS    = ft.h
OBJS    = $(SRCS:.c=.o)

all: $(NAME)

# A regra de compilação agora depende de $(DEPS)
%.o: %.c $(DEPS)
	$(CC) $(CFLAGS) -c $< -o $@

$(NAME): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(NAME)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re

