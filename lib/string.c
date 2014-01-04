#include<stdio.h>
int strlen(char* p){
	char* s=p;
	while(*(s++));
	return s-p;
}
void put_n(int a){
	put_ch('4');
}