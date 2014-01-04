segment .text
global put_s
global put_ch
global get_key
global ReadLoop
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

		mov ah,1
		int 16h
		
        mov ah, 00H        ;key is ready, get it
        int 16H            ;now process the key
		cmp ah,0x48
		jne get_key
	ret
ReadLoop:       mov     ah, 0           ;Read Key opcode
                int     16h
                cmp     al, 0           ;Special function?
                jz      ReadLoop        ;If so, don't echo this keystroke
                mov ah,0xe
				int 10h
                cmp     al, 0dh         ;Carriage return (ENTER)?
                jne     ReadLoop