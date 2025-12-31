NAME    = programa
CC      = gcc
CFLAGS  = -Wall -Wextra -Werror
RM      = rm -f

# Adicione aqui os arquivos .c que você criar
SRCS    = ft_strlen.c
OBJS    = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(NAME)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
