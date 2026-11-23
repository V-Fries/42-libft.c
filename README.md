# libft

`libft` is a C utility library developed as part of the 42 curriculum. It provides reimplementations of common libc-style memory, string, character, and number functions, along with helpers for lists, hash maps, bitmasks, sorting, math, and input/output.

## Build

Build the static library with `make`:

```sh
make
```

This produces `libft.a` in the project root. The build uses `cc` (or the `CC` value supplied to make), compiles with `-Wall -Wextra -Werror`, and enables optimization.

Other Makefile targets:

```sh
make debug   # build libft_debug.a with debug symbols and AddressSanitizer
make clean   # remove intermediate build files
make fclean  # remove build files, libraries, and test executables
make re      # clean and rebuild the normal library
make re_debug
```

The `test` target builds and runs the project's test executables. It also invokes Apple's `leaks` utility, so that target expects a compatible macOS environment.

## Use the library

Include `libft.h` to access the main public headers, and link the archive when compiling:

```c
#include "libft.h"

int main(void)
{
	char *copy = ft_strdup("hello");
	/* use copy */
	free(copy);
	return (0);
}
```

For example, if the library is in the current directory and the source is `main.c`:

```sh
cc -Wall -Wextra -Werror -Iinclude main.c -L. -lft -o example
```

Include `<stdlib.h>` in application code when using `free`. `ft_bitmask.h` is provided as a separate public header and is not included by `libft.h`; include it directly when using the bitmask API.

## Included modules

- **Memory:** `ft_memset`, `ft_memcpy`, `ft_memmove`, `ft_memchr`, `ft_memcmp`, `ft_bzero`, and `ft_calloc`.
- **Strings:** length, copy, concatenate, search, compare, trim, substring, split, join, character-skip, and string-set helpers.
- **Characters:** character classification, case conversion, and set membership.
- **Numbers:** integer parsing and formatting, absolute value, and swap helpers.
- **I/O:** file-descriptor output, `get_next_line`, multi-file-descriptor line reading, and `ft_printf`.
- **Collections:** singly linked lists for pointers, doubly linked pointer lists, integer lists, and a string-keyed hash map.
- **Other utilities:** bitmask operations, integer/string merge sorts, boolean reversal, and angle conversion.

See the headers under [`include/`](include/) for function declarations and data types. The `ft_printf` implementation supports `%c`, `%s`, `%p`, `%d`, `%i`, `%u`, `%x`, `%X`, and `%%`.
