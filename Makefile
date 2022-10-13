# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vfries <vfries@student.42lyon.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/07 19:13:43 by vfries            #+#    #+#              #
#    Updated: 2022/10/13 15:38:59 by vfries           ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

NAME =			libft.a
SRCS =			ft_isalpha.c	\
				ft_toupper.c	\
				ft_isdigit.c	\
				ft_tolower.c	\
				ft_isalnum.c	\
				ft_strchr.c		\
				ft_isprint.c	\
				ft_strncmp.c	\
				ft_strlen.c		\
				ft_memchr.c		\
				ft_memset.c		\
				ft_memcmp.c		\
				ft_bzero.c		\
				ft_strnstr.c	\
				ft_memcpy.c		\
				ft_atoi.c		\
				ft_isascii.c	\
				ft_memmove.c	\
				ft_strlcat.c	\
				ft_strlcpy.c	\
				ft_strrchr.c	\
				ft_calloc.c		\
				ft_strdup.c		\
				ft_substr.c		\
				ft_strjoin.c	\
				ft_strtrim.c	\
				ft_split.c		\
				ft_itoa.c		\
				ft_strmapi.c	\
				ft_striteri.c	\
				ft_putchar_fd.c	\
				ft_putstr_fd.c	\
				ft_putendl_fd.c	\
				ft_putnbr_fd.c
OBJS =			${SRCS:.c=.o}
SRCS_BONUS =	ft_lstnew_bonus.c		\
				ft_lstadd_front_bonus.c	\
				ft_lstsize_bonus.c
OBJS_BONUS =	${SRCS_BONUS:.c=.o}
FLAG =			-Wall -Wextra -Werror

.PHONY:		.c.o ${NAME} clean fclean #bonus

.c.o:
			gcc ${FLAG} -c $< -o ${<:.c=.o}

$(NAME):	${OBJS}
			ar rcs ${NAME} ${OBJS}

bonus:		${OBJS} ${OBJS_BONUS}
			ar rcs ${NAME} ${OBJS} ${OBJS_BONUS}

all:		${NAME}

clean:
			rm -f ${OBJS} ${OBJS_BONUS}

fclean:		clean
			rm -f ${NAME}

re:			fclean all

re_bonus:	fclean bonus
