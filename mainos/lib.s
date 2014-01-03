segment .text
global put_ch
put_ch:
	pop bp
	pop ax
	push bp
	;mov al,'d'
	mov ah,0xe
	int 10h
	ret