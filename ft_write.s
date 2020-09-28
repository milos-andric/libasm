section .text
extern __errno_location
global ft_write

ft_write :
    xor             rax, rax
    mov             rax, 0x01
    syscall
    test            rax, rax
    jnl             _end

_error :
    neg     rax
    mov     rax, rdx
    call    __errno_location
    mov     [rax]

_end :
    ret
