; On recoit les parametres dans l ordre des registres suivant :
; Rdi, ici dest
; Rsi, ici src
; Rdx
; R10
; R8
; R9
; ils sont tous de taille 32bits

section .text
global ft_strcmp

ft_strcmp :
xor			rcx, rcx
xor			rax, rax

_loop :
cmp byte	[rsi + rcx], 0x0
jz 		_end
cmp byte	[rdi + rcx], 0x0
jz 		_end
mov 	rdx, [rsi + rcx]
cmp		[rdi + rcx], rdx
jne		_end
inc 		rcx
jmp 	_loop

_end :
mov 	rdx, [rsi + rcx]
cmp		[rdi + rcx], rdx
ret 							