; On recoit les parametres dans l ordre des registres suivant :
; Rdi, ici s2
; Rsi, ici src
; Rdx
; R10
; R8
; R9
; ils sont tous de taille 32bits

section .text
global ft_strcmp

%define s1 rdi
%define s2 rsi

ft_strcmp :
xor			rcx, rcx
xor			rax, rax

_loop :
cmp byte	[s2 + rcx], 0x0
je 		_end
cmp byte	[s1 + rcx], 0x0
je 		_end
mov 	dl, byte [s2 + rcx]
cmp	byte [s1 + rcx], dl
jne		_end
inc 		rcx
jmp 	_loop

_end :
mov 	al, byte [s1 + rcx]
mov 	dl, byte [s2 + rcx]
sub 	al, dl
ret 							