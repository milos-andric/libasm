;[REGISTRE]
;	AX	Accumulateur
;	BX	Base
;	CX	Compteur
;	DX	Données
;	DI	Par1
;	SI	Par2
;	DX	Par3
;	cx	Par4
;	r8	Par5
;	r9	Par6
section .text
global ft_strlen

ft_strlen:
mov			rax, 0
cmp			rdi, 0
je		_end

_loop:
cmp byte	[rdi + rax], 0x0 ; adrr + index | byte(char)|
je		_end ; if is the end of index
inc			rax ; inc index
jmp		_loop

_end:
ret