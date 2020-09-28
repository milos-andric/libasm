section .text
global ft_strcmp

%define s1 rdi
%define s2 rsi

ft_strcmp :
xor			rcx, rcx
xor			rax, rax

_loop :
'cmp byte	[s2 + rcx], 0x0     ;ici on verifie si l'une des deux str est terminee
je 		_end
cmp byte	[s1 + rcx], 0x0
je 		_end
mov 	dl, byte [s2 + rcx]     ;on verifie la cmparaison, on dirait qu'on ne peut pas dereferencer deux pointeur sur une ligne
cmp	byte [s1 + rcx], dl
jne		_end
inc 		rcx
jmp 	_loop

_end :
mov 	al, byte [s1 + rcx]
mov 	dl, byte [s2 + rcx]
sub 	al, dl                  ;calcule du retour
ret
