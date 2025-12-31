NAME    = programa
CC      = cc
CFLAGS  = -Wall -Wextra -Werror -I.
RM      = rm -f

SRCS    = $(wildcard *.c)
OBJS    = $(SRCS:.c=.o)
DEPS    = $(wildcard *.h)

all: $(NAME)

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
