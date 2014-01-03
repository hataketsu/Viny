org 0x1000
mov ax,0x9500
mov ss,ax
Reset:
	mov	ah, 0					;function
	mov	dl, 0					;driver
	int	0x13					;call BIOS
	jc	Reset	

	mov		ax, 0
	mov		es, ax
	mov		bx, 0x1200
Read:
	mov		ah, 0x02			;function
	mov		al, 5				;numbers of sector
	mov		ch, 0				;track
	mov		cl, 3				;sector
	mov		dh, 0				;head
	mov		dl, 0				;drive
	int		0x13
	jc		Read

mov ax,0
mov ds,ax
mov cs,ax
mov es,ax
mov al,'.'
	mov ah,0xe
	int 10h
mov ax,0x1200
jmp ax
times 512-($-$$) db 0
