section .text
global ft_write

%define s1 rdi
%define s2 rsi

ft_write :
xor			rax, rax
mov			rax, 0x01
syscall
ret