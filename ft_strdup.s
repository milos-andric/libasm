; On recoit les parametres dans l ordre des registres suivant :
; Rdi, ici dest
; Rsi, ici src
; Rdx
; R10
; R8
; R9
; ils sont tous de taille 32bits

section .text
extern malloc, ft_strlen, ft_strcpy
global ft_strdup

ft_strdup:
push    rdi
call    ft_strlen
inc     rax
mov     rdi, rax
call    malloc
cmp     rax, 0x0
jne     _end

_error:
mov     rax, 0x0
ret

_end:
pop     rdi
mov     rsi, rdi
mov     rdi, rax
call    ft_strcpy
ret
