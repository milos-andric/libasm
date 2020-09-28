section .text
extern malloc, ft_strlen, ft_strcpy ;appelle de fonctions exterieur
global ft_strdup

ft_strdup:
    push    rdi                     ;on met rdi sur la stack pour la sauvegarder
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
    pop     rdi                     ; on prend le premier element de la stack et on le met das rdi
    mov     rsi, rdi
    mov     rdi, rax
    call    ft_strcpy
    ret
