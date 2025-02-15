NAME = libftprintf.a
SRCS =	ft_putchar_fd.c \
			ft_putchar_fd.c \
			ft_putnbr_fd.c \
			ft_putstr.c \
			ft_strlen.c \
			ft_toupper.c \
			ft_printf.c \
			ft_print_c.c \
			ft_print_d_and_u.c \
			ft_print_p.c \
			ft_print_lx.c \
			ft_print_percent.c \
			ft_print_s.c \
			ft_print_x.c \
			ft_calloc.c \
			ft_bzero.c \
			ft_memset.c \
			ft_convert_dec_to_hexstr.c \

OBJS = ${SRCS:.c=.o}
CC		= gcc
RM		= rm -f
CFLAGS = -Wall -Wextra -Werror

all:	${NAME}

$(NAME): ${OBJS}
		ar rcs ${NAME} ${OBJS}

.c.o:
		${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

clean:
		${RM} ${OBJS} 

fclean:	clean
		${RM} ${NAME}

re:		fclean all

.PHONY: all clean fclean re .c.o 
