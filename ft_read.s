section .text
global ft_read

ft_read :
xor			rax, rax
mov			rax, 0x00
syscall
ret