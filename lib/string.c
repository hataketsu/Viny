int strlen(char* p){
	char* s=p;
	while(*(s++));
	return s-p;
}