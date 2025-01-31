# 📌 ft_printf – Custom Printf Implementation

***📝 Description***

This project is a reimplementation of the C standard printf function.

It is developed as part of the 42 School curriculum and aims to deepen understanding of variadic functions, formatted output, and memory management.

*Additionally, this project integrates seamlessly with:*

📜 [Libft](https://github.com/gaspardboidin/Libft) – A custom C standard library.

📄 [Get Next Line](https://github.com/gaspardboidin/Get_Next_Line) – A function that reads a file line by line.

***🚀 Features***

✅ Supports basic format specifiers: %c, %s, %p, %d, %i, %u, %x, %X.

✅ Handles variadic arguments using stdarg.h.

✅ Optimized for performance with reduced system calls.

✅ Fully compatible with Libft, leveraging custom utility functions.

***⚙️ Compilation & Usage***


    make
*This generates a libftprintf.a static library.*

***📌 Use ft_printf in another project***

*Include the header file in your source files:*

    #include "ft_printf.h"
    
*Compile with the library:*

    gcc your_program.c -L. -lftprintf -o your_program
  
***📂 Project Structure***


📌 ft_printf.h → Header file containing function prototypes and necessary includes.

📌 ft_printf.c → Core implementation of ft_printf, managing format parsing and output.

📌 ft_parser.c → Parses the format specifier and directs output to the appropriate handler.

📌 ft_handler.c → Handles character-based and integer format specifiers.

📌 ft_handler2.c → Handles unsigned and hexadecimal format specifiers.

📌 Makefile → Automates the compilation of the library.

***🎯 Skills Developed***


✔️ Advanced usage of variadic functions (va_list).

✔️ Efficient formatted output handling.

✔️ Memory management and buffer optimization.

✔️ Understanding of low-level system calls (write).

***📜 License***

This project is under the MIT License – feel free to use, modify, and distribute it.

***🔗 Other Related Projects***

📜 [Libft](https://github.com/gaspardboidin/Libft) – A custom C standard library.

📄 [Get Next Line](https://github.com/gaspardboidin/Get_Next_Line) – Read a file line by line.

## 🚀 About Me
I'm a student at 42 Paris, you can see my profile on [Profil Intra](https://profile.intra.42.fr/users/gaboidin) !
