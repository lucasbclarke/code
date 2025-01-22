#include <stdio.h>
#include <string.h>

int main(){
	char one[10] = "te";
	char two[10] = "st";

	strncat(one, two, 2);
	
	printf("%s\n", one);

	return 1;
}
