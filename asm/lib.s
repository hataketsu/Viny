segment .text
global put_s
global getch

put_s:
	pop ebp
	pop esi
	push ebp
	l:lodsb
		or al,al
		jz endloop
		mov ah,0xe
		int 10h
		jmp l
	endloop:
	ret

getch:
	xor bp,bp
	mov    ah, 0           ;Read Key opcode
    int     16h
	and ax,0xff
    ret