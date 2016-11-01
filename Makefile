# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nweizman <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/10/25 15:38:22 by nweizman          #+#    #+#              #
#    Updated: 2016/10/25 15:38:23 by nweizman         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME =		libftprintf.a

CFLAGS =	-Wall -Werror -Wextra

SRCS =		build_object.c						\
			ft_printf.c							\
			help_functions.c					\
			syntax_printf.c						\
			count_digit.c						\
			build/build_object_c.c				\
			build/build_object_o.c				\
			build/build_object_u.c				\
			build/build_object_d.c				\
			build/build_object_s.c				\
			build/build_object_x.c				\
			build/build_object_special.c		\
			ft_func/ft_memcpy.c					\
			ft_func/ft_strcpy.c					\
			ft_func/ft_putchar.c				\
			ft_func/ft_strdup.c					\
			ft_func/ft_atoi.c					\
			ft_func/ft_putstr.c					\
			ft_func/ft_strlen.c					\
			ft_func/ft_itoa_base.c				\
			ft_func/ft_str_to_lower.c			\
			ft_func/ft_strncmp.c				\
			ft_func/ft_lstnew.c					\
			ft_func/ft_strcat.c					\
			ft_func/ft_tolower.c				\
			ft_func/ft_strchr.c					\
			ft_func/ft_add_char_at_index.c		\
			ft_func/ft_strncpy.c				\
			ft_func/ft_memset.c					\
			ft_func/ft_insert_dynamic_arr.c		\
			ft_func/ft_free_dynamic_arr.c		\
			ft_func/ft_init_dynamic_arr.c

OBJS =		build_object.o				\
			ft_printf.o					\
			help_functions.o			\
			syntax_printf.o				\
			count_digit.o				\
			build_object_c.o			\
			build_object_o.o			\
			build_object_u.o			\
			build_object_d.o			\
			build_object_s.o			\
			build_object_x.o			\
			build_object_special.o		\
			ft_memcpy.o					\
			ft_strcpy.o					\
			ft_putchar.o				\
			ft_strdup.o					\
			ft_atoi.o					\
			ft_putstr.o					\
			ft_strlen.o					\
			ft_itoa_base.o				\
			ft_str_to_lower.o			\
			ft_strncmp.o				\
			ft_lstnew.o					\
			ft_strcat.o					\
			ft_tolower.o				\
			ft_strchr.o					\
			ft_add_char_at_index.o		\
			ft_strncpy.o				\
			ft_memset.o					\
			ft_insert_dynamic_arr.o		\
			ft_free_dynamic_arr.o		\
			ft_init_dynamic_arr.o

CC =		gcc

all: $(NAME)

$(NAME):
	@$(CC) $(CFLAGS) -c $(SRCS)
	ar -rc $(NAME) $(OBJS)

clean:
	@/bin/rm -f $(OBJS)

fclean: clean
	@/bin/rm -f $(NAME)

re: fclean all
