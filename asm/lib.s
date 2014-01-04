segment .text
global put_s
global put_ch
global getch
put_ch:
	pop ebp
	pop eax
	and eax,0xff
	push ebp
	mov ah,0xe
	int 10h
	ret
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
	;mov ah,0
	and eax,0xff
    ret