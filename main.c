#include "libasm.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

int main(void)
{
	int s1 = ft_strlen("sd");
	printf("%zu\n", ft_strlen("0123456789"));
	printf("%zu\n", ft_strlen("01234"));
	printf("%zu\n", ft_strlen("0"));
	printf("%zu\n", ft_strlen(""));

	printf("\n\nstrcmp : %d\n", ft_strcmp("0123", "0123"));
	printf("\n\nreal strcmp : %d\n\n", strcmp("0123", "0123"));
	printf("%d\n", ft_strcmp("01234", "02"));
	printf("%d <- real\n", strcmp("01234", "02"));
	printf("%d\n", ft_strcmp("02", "0123"));
	printf("%d <- real\n", strcmp("02", "0123"));
	printf("%d\n", ft_strcmp("", "1"));
	printf("%d real\n", strcmp("", "1"));

	int fd1 = open("myfile", O_CREAT | O_WRONLY, 0777);
	char *str1 = "Ballon rouge";
	ft_write(fd1, str1, ft_strlen(str1));


	printf("strdup : %s",ft_strdup("Banana"));
	printf("strdup : %s",ft_strdup("a"));
	printf("strdup : %s",ft_strdup(""));
	printf("strdup : %s",ft_strdup("ABCDAAAA"));

	printf("\n\n\nstrcpy :\n");
	char *s2 = "Banana";
	char *s4 = "salu";
	char s3[10];
	char s5[10];
	char s6[10];
	ft_strcpy(s3,s2);
	printf("%s 		src = %p 	dest = %p\n", s3, s2, s3);	
	ft_strcpy(s5,s4);
	printf("%s 		src = %p 	dest = %p\n", s5, s4, s5);
	ft_strcpy(s6,s4);
	printf("%s 		src = %p 	dest = %p\n", s6, s4, s6);
	return(0);
}
