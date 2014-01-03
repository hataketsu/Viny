
__asm__(".code16\n");
__asm__("jmpl $0x0000, $main\n");
void put_ch(char);
void main() {
	put_ch('r');
     
}