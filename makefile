all:Viny.img
Viny.img:boots setup mainOS.bin
	cat boots mainOS.bin > Viny.img
boots:boot/boot.s
	nasm -f bin -o boots boot/boot.s
setup:boot/setup.s
	nasm -f bin -o setup boot/setup.s
mainOS.bin:mainos/main.c
	gcc -c -m32 mainos/main.c -o main.o
	ld -Tlink.ld -o mainOS.bin main.o
	
clean:
	rm boots setup main.o mainOS.bin