/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nweizman <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/10/13 16:11:30 by nweizman          #+#    #+#             */
/*   Updated: 2016/10/13 16:11:31 by nweizman         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H
# define F format
# define F1 format + 1
# define SIGN obj->specifier
# define LENGTH obj->length
# define RES obj->result
# define FLAGS obj->flags
# define WIDTH obj->width
# define PRECISION obj->precision
# include <stdlib.h>
# include <unistd.h>
# include <stdarg.h>
# include <wchar.h>
# include <string.h>

typedef struct	s_list
{
	void			*content;
	size_t			content_size;
	struct s_list	*next;

}				t_list;

typedef struct	s_obj
{
	void	*value;
	char	flags;
	int		width;
	int		precision;
	char	length;
	char	specifier;
	char	*result;

}				t_object;

typedef struct	s_array
{
	char	*arr;
	size_t	used;
	size_t	size;

}				t_array;

int				ft_printf(const char *format, ...);
int				args_count(char *format);
int				create_args_list(void *arg, t_list **args_list);
int				check_flags(char **format, t_object *obj);
char			*get_next_char(char *str);
char			*get_char(char *str);
void			build_object(t_object *obj);
void			build_object_x(t_object *obj);
void			build_object_d(t_object *obj);
void			build_object_c(t_object *obj);
void			build_object_s(t_object *obj);
void			build_object_o(t_object *obj);
void			build_object_u(t_object *obj);
void			build_object_special(t_object *obj);
int				ft_atoi(const char *str);
char			*ft_itoa_base(uintmax_t value, int base);
t_list			*ft_lstnew(void const *content, size_t content_size);
void			ft_putstr(char const *s, t_object *obj);
void			ft_str_to_lower(char *str);
char			*ft_strcpy(char *dest, const char *src);
char			*ft_strdup(const char *s1);
size_t			ft_strlen(const char *str);
int				ft_tolower(int c);
void			*ft_memcpy(void *str1, const void *str2, size_t n);
void			ft_putchar(char c);
char			*ft_strcat(char *dest, const char *src);
int				ft_strncmp(const char *str1, const char *str2, size_t n);
char			*ft_strchr(const char *str, int c);
char			*ft_add_char_at_index(char *dest, int c, size_t index);
char			*ft_strncpy(char *dest, const char *src, size_t n);
void			*ft_memset(void *str, int c, size_t n);
char			*ft_insert_dynamic_arr(t_array *pointer, char data);
void			ft_free_dynamic_arr(t_array *pointer);
char			*ft_init_dynamic_arr(t_array *pointer, size_t first_size);
void			width_fill_offset(t_object *obj, char c, size_t offset);
int				count_digit(char *format);
int				object_management_bonus(char **format);

#endif
