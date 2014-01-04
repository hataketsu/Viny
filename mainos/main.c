
__asm__(".code16\n");
__asm__("jmpl $0x0000, $mainOS\n");
#include<stdio.h>
#include<string.h>
void process(char* cmd){
	put_s(cmd); 
}
char k,pos=0;
char temp[20];
void mainOS() {
	//put_s("\r\nKernel loaded.\r\nNow we run in realmode with programs from C, may be C++\r\n"); 
	//put_s("Author:Trinh Hung Anh\r\n");
	//put_s("Command promt started\r\n");
	put_n(44);
	__asm__("hlt");
	put_n(44);
	//__asm__("hlt");
	//put_ch('4');
	//put_ch('4');
	//put_s("Command promt started\r\n>>>");
	/*while(k!=27){
		k=getch();
		if(k==13) {
			int i=0;
			put_ch(k);
			put_ch(10);
			pos=0;
			process(temp);
			//put_s(temp);
			//put_n(33);
			for(i=0;i<20;i++) temp[i]=0;
		}
		else {
			put_ch(k);
			temp[pos++]=k;
		}
			
	}*/
	
}