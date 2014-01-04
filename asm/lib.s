segment .text
global put_s
global put_ch
global get_key
global repeat
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
get_key:
        mov ah, 00H        ;key is ready, get it
        int 16H            ;now process the key
		cmp ah,0x48
		jne get_key
	ret
