#include "libasm.h"
#include <stdio.h>
#include <stdlib.h>

int main(void)
{
	int s1 = ft_strlen("sd");
	printf("%zu\n", ft_strlen("0123456789"));
	printf("%zu\n", ft_strlen("01234"));
	printf("%zu\n", ft_strlen("0"));
	printf("%zu\n", ft_strlen(""));

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
