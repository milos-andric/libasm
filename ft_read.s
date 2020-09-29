section .text
extern  __errno_location
global ft_read

ft_read :
    xor			rax, rax
    mov			rax, 0x00
    syscall
    test            rax, rax
    jnl             _end

_error :
    neg     rax
    mov     rdx, rax
    call    __errno_location
    mov     [rax], rdx
    mov     rax, 1

_end :
    ret
