#include "libasm.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

void    test_ft_strlen(char *str)
{
	printf("\n\tTesting ft_strlen.s with %s\n", str);
	printf("\t\treal : %lu\n", strlen(str));
	printf("\t\tmine : %lu\n", ft_strlen(str));
}

void    test_ft_strcmp(char *s1, char *s2)
{
	printf("\n\tTesting ft_strcmp.s with (%s) and (%s)\n", s1, s2);
	printf("\t\treal : %d\n", strcmp(s1, s2));
	printf("\t\tmine : %d\n", ft_strcmp(s1, s2));
}

void    test_ft_write(void)
{
	int fd1 = open("myfile1", O_CREAT | O_WRONLY, 0777);
	int fd2 = open("myfile2", O_CREAT | O_WRONLY, 0777);
	char *str1 = "What the fuck did you just fucking say about me, you little bitch? I am trained in gorilla warfare and I'm the top sniper in the entire US armed forces. You are nothing to me but just another target. I will wipe you the fuck out with precision the likes of which has never been seen before on this Earth, mark my fucking words. You think you can get away with saying that shit to me over the Internet? Think again, fucker. As we speak I am contacting my secret network of spies across the USA and your IP is being traced right now so you better prepare for the storm, maggot. The storm that wipes out the pathetic little thing you call your life. You're fucking dead, kid. I can be anywhere, anytime, and I can kill you in over seven hundred ways, and that's just with my bare hands. Not only am I extensively trained in unarmed combat, but I have access to the entire arsenal of the United States Marine Corps and I will use it to its full extent to wipe your miserable ass off the face of the continent, you little shit. If only you could have known what unholy retribution your little comment was about to bring down upon you, maybe you would have held your fucking tongue. But you couldn't, you didn't, and now you're paying the price, you goddamn idiot. I will shit fury all over you and you will drown in it. You're fucking dead, kiddo.";
	ft_write(fd1, str1, ft_strlen(str1));
	write(fd2, str1, ft_strlen(str1));
}

void    test_ft_strdup(char *str)
{
	char *str1;

	printf("\n\tTesting ft_strdup.s with (%s)\n", str);
	printf("\t\tmine : (%s)\n", str1 = ft_strdup(str));
	free(str1);
}

int main(void)
{
	printf("Ft_strlen:");
	test_ft_strlen("0123456789");
	test_ft_strlen("Holllllyy Molllyyy");
	test_ft_strlen("godddddddddddddammmmmmmmmmmmmmmmmmmmmmn");
	test_ft_strlen("");
	test_ft_strlen("<.,.,.lls;dlfk==--asdkmfo");

	printf("Ft_strcmp:");
	test_ft_strcmp("0","0");
	test_ft_strcmp("0", "1");
	test_ft_strcmp("003", "000");
	test_ft_strcmp("111112", "111113");
	test_ft_strcmp("<.,.,.lls;dlfk==--asdkmfo", "<.,.,.lls;dlfk==--asdkmfo@");

	printf("Ft_write :\ndiff myfile1 myfile2\n\n");
	test_ft_write();
	
	printf("Ft_strdup :");
	test_ft_strdup("Banana");
	test_ft_strdup("");
	test_ft_strdup(";lsakjdfj");
	test_ft_strdup("sdgtjukidfgjukdfuidfghjukl");

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
