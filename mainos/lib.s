segment .text
global put_ch
global put_s
put_ch:
	pop ebp
	xor ax,ax
	pop ax
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