;Les registres :
; les registres sont des espaces memoires particuliers qu utilise le langage assembleur
; les registres designent un espace memoire se trouvant au plus pres du processeur
; rendant cette espace memoire le rapide d accessibilite.
; aujourdhui seulement les registres generaux et de flags sont utilise et pas du tout ceux de segment

; les registres sont les suivant
;	AX	Accumulateur, c est aussi souvent le registre de retour de la fonctions ou alors d un appel system comme read ou write
;	BX	Base
;	CX	Compteur, utilise pour les boucles ou les incrementation
;	DX	Données, utilise pour le retour de calcule comme mul et div
;	DI	Destination Index, utilise comme pointeur destination pour operation sur chaine de caractere
;	SI	Source Index, utilise comme pointeur source pour operation sur chaine de caractere

section .text					; convention d asm qui permet au programme de savoir dans quelle grande partie du programme elle se trouve
								; il en existe 3 
global ft_strlen

ft_strlen:
xor			rax, rax			; mise a 0 du registre rax, le registre de retour
cmp			rdi, 0				; verification de la chaine recu en parametre par le registre rdi, si le resultat de la comparation est a 0, chaine vide
jz		_end					; Jump au point d ancrage _end si instruction du dessus est egale a 0, magnifique

_loop:							; il s agit ici comme d un ancrage, un point vers lequelle ont pourras sauter plus tard ou avant
cmp byte	[rdi + rax], 0x0	; comparaison d octet avec la valeur 0, les crochet servent a dereferencer le pointeur sur rdi + incrementation
jz		_end					; si on est a la fin de la chaine, aller a _end
inc			rax					; incrementation de l index
jmp		_loop					; revenir au point d ancrage _loop

_end:
ret 							; fin de la fonction, retour de rax