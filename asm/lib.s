segment .text
global put_s
global put_ch
global get_key
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
	waitForKey: mov   ah,01H
                        int   16H
                        jnz   gotKey       ;jmp if key is ready
                        jmp   waitForKey   ;loop back and check for a key
            gotKey:     mov ah, 00H        ;key is ready, get it

                        int 16H            ;now process the key
	ret