#ifndef FT_PRINTF_H
# define FT_PRINTF_H

#include <stdarg.h>
#include <unistd.h>
#include "libft/libft.h"

int ft_printf(const char *format, ...);
int ft_parse_and_print(char specifier, va_list args);

#endif