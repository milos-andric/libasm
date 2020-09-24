section .text
global ft_read

%define s1 rdi
%define s2 rsi

ft_read :
xor			rax, rax
mov			rax, 0x00
syscall
ret