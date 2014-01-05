
asm(".code16\n");
asm("lea ax,mainOS\n");
asm("jmp ax");
#include<stdio.h>
#include<string.h>
void n(int);
void process(char* cmd){
	put_s(cmd); 
}
char k,pos=0;
char temp[20];
void mainOS() {
	//put_s("\r\nKernel loaded.\r\nNow we run in realmode with programs from C, may be C++\r\n"); 
	//put_s("Author:Trinh Hung Anh\r\n");
	//put_s("Command promt started\r\n");
	//put_ch('5');
	n(8);
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