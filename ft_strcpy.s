; On recoit les parametres dans l ordre des registres suivant :
; Rdi, ici dest
; Rsi, ici src
; Rdx
; R10
; R8
; R9


section .text
global ft_strcpy

%define src rsi     ; par lisibilite, on remplace le nom du registre par un nom plus idiomatique
%define dest rdi    ; pareil ici

ft_strcpy:
xor			rcx, rcx    ; mise a 0
xor			rdx, rdx
mov			rax, dest   ; on met le pointeur de destination dans le retour

_loop :
cmp byte	[src + rcx], 0x0    ; on verifie ici si on a atteint la fin de la string
je		_end
mov			dl, byte [src + rcx]    ;deplacer le char de src a l'index rcx dans un registre temporaire
mov			byte [dest + rcx], dl   ;du temporaire au dest a l'index rcx
inc			rcx
jmp		_loop

_end:
mov byte	[dest + rcx], 0x0   ;on met le dernier char a 0
ret
