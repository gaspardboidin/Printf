#include "ft_printf.h"

int ft_printf(const char *format, ...)
{
    va_list args;
    int total_len = 0; // Compteur pour la longueur totale écrite
    int i = 0;

    va_start(args, format);
    while (format[i])
    {
        if (format[i] == '%' && format[i + 1]) // Détection d'un format
        {
            total_len += ft_parse_and_print(format[++i], args);
            i++;
        }
        else
        {
            ft_putchar(format[i]);
            total_len++;
            i++;
        }
    }
    va_end(args);
    return (total_len);
}
