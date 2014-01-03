OPTION=-m32 -Iinclude
LIBS=$(wildcard lib/*.c)
tmp:=$(shell ls lib)
OBJS=$(tmp:%.c=%.o)
all:Viny.img
Viny.img:boot.bin mainOS.bin
	cat boot.bin mainOS.bin > Viny.img
boot.bin:boot/boot.s
	nasm -f bin -o boot.bin boot/boot.s
setup:boot/setup.s
	nasm -f bin -o setup boot/setup.s

mainOS.bin:main.o lib.o $(OBJS)
	ld -Tlink.ld -o mainOS.bin main.o lib.o $(OBJS)
%.o:lib/%.c
	gcc -c $(OPTION) $< -o $@
main.o:mainos/main.c
	gcc -c $(OPTION) mainos/main.c -o main.o
lib.o:mainos/lib.s
	nasm -f win32 -o lib.o mainos/lib.s
clean:
	rm boot.bin setup main.o mainOS.bin