
__asm__(".code16\n");
__asm__("jmpl $0x0000, $mainOS\n");
#include<stdio.h>
#include<string.h>
void mainOS() {
	
	put_s("\r\nKernel loaded.\r\nNow we run in realmode with programs from C, may be C++\r\n\x00"); 
	put_s("Author:Trinh Hung Anh\r\n\x00");
	put_ch(get_key());
	put_s("Hung\r\n\x00");
}