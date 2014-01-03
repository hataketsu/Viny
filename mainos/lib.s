segment .text
global put_ch
put_ch:

	mov al,'d'
	mov ah,0xe
	int 10h
	ret