org 0x7c00

Reset:
	mov	ah, 0					;function
	mov	dl, 0					;driver
	int	0x13					;call BIOS
	jc	Reset	
	call test
	mov		ax, 0
	mov		es, ax
	mov		bx, 0x1000
Read:
	mov		ah, 0x02			;function
	mov		al, 1				;numbers of sector
	mov		ch, 0				;track
	mov		cl, 2				;sector
	mov		dh, 0				;head
	mov		dl, 0				;drive
	int		0x13
	jc		Read
call test

mov ax,0x1000
jmp ax

test:
	mov al,'.'
	mov ah,0xe
	int 10h
	ret
	
	times 510-($-$$) db 0
	db 0x55
	db 0xAA
