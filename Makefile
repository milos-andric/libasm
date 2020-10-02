NAME=libasm.a
ASM= ft_strlen.s \
     ft_strcpy.s \
     ft_strcmp.s \
     ft_write.s  \
     ft_strdup.s \
     ft_read.s

OBJS=$(ASM:%.s=%.o)

%.o: %.s
	nasm -f elf64 $< -o $@

all : $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re : fclean all

run :	$(NAME) 
	 	clang  main.c -L. -lasm -o libasm

runs :	$(NAME) 
	 	clang -g3 -fsanitize=address main.c -L. -lasm -o libasm
