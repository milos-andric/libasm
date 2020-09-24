section .text
global ft_write

ft_write :
xor			rax, rax
mov			rax, 0x01
syscall
ret