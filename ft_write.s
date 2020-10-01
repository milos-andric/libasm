section .text
extern __errno_location
global ft_write

ft_write :
    xor             rax, rax
    mov             rax, 0x01
    syscall                     ;appelle de fonctions systeme corresondant a l'ID 1(qu'on a renseigner dans rax)
    test            rax, rax    ;on verifie le null
    jnl             _end

_error :
    neg     rax                 ;on multiplie rax par -1
    mov     rax, rdx
    call    __errno_location
    mov     [rax], rdx
    mov     rax, -1

_end :
    ret
