#include<stdio.h>
int strlen(char* p){
	char* s=p;
	while(*(s++));
	return s-p;
}
void put_ch(char a){
	//asm(".code16\n");
	asm("mov al,[esp+8] \n"
		"mov ah,0xe \n"
		"int 0x10 \n");
}
void n(int a){
	put_ch('0'+a);
}
void put_n(int a){
	
	int k=1;
	put_ch('0'+a);
	while(k<=a) k*=10;
	k/=10;
	
	while(k){
		put_ch('0'+(a/k));
		a%=k;
		k/=10;
		}
		
}