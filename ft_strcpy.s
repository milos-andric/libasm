; On recoit les parametres dans l ordre des registres suivant :
; Rdi, ici dest
; Rsi, ici src
; Rdx
; R10
; R8
; R9
; ils sont tous de taille 32bits

section .text
global ft_strcpy

%define src rsi
%define dest rdi

ft_strcpy:
xor			rcx, rcx
xor			rdx, rdx
mov			rax, dest

_loop :
cmp byte	[src + rcx], 0x0
je		_end
mov			dl, byte [src + rcx]
mov			byte [dest + rcx], dl
inc			rcx
jmp		_loop

_end:
mov byte	[dest + rcx], 0x0
ret