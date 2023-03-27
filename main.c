#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
#include <stdlib.h>

ssize_t ft_write(int fd, const void *buf, size_t count);

int		ft_strlen(char const *str);

int ft_strcmp(const char *s1, const char *s2);

char	*ft_strcpy(char *dst, char const *src);

char *ft_strdup(const char *s);

ssize_t ft_read(int fd, void *buf, size_t count);

int main()
{
    printf("%i\n", strcmp("Tripouille", "TripouilleX"));
    printf("%i\n", ft_strcmp("Tripouille", "TripouilleX"));

    return 1;
    char t[103] = "hello123asd\0";

    char b[103];

    printf("len : %i \n", ft_strlen(t));

    ft_strcpy(b, t);
    printf("cpy = %s \n", b);

    printf("cmp = %i\n",ft_strcmp(t, "hello234"));
    printf("cmp = %i\n",strcmp(t, "hello234"));

    printf("Return of writing NULL: %li\n", ft_write(-1, t, 5));
    printf("Errno: %i\n", errno);
    printf("Return of writing NULL org: %li\n", write(-1, t, 5));
    printf("Errno: %i\n", errno);

    t[5] = 0;
    printf("Return of reading (Read istn NULL Terminated, could be junk after): %li\n", ft_read(0, t, 5));
    printf("org Return of reading(Read istn NULL Terminated, could be junk after): %li\n", read(0, t, 5));
    printf("Print inp: %s\n\n", t);

    char *str = ft_strdup("testing");
    printf("duplicated string: %s\n", str);
    free(str);

    str = strdup("testing");
    printf("org duplicated string: %s\n", str);
    free(str);


    str = ft_strdup(NULL);
    printf("memaddr of strdup with NULL: %p\n", str);
}