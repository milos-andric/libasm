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

ft_strcmp:
xor			rcx, rcx
mov			rax, rdi			
cmp byte	[rsi], 0x0	
jz		_end				

_loop:							
mov			rdx, [rsi + rcx]
mov			[rdi + rcx], rdx
inc			rcx					
cmp byte	[rsi + rcx], 0x0
jz		_end					
jmp		_loop					

_end:
mov byte	[rdi + rcx], 0x0
ret 							