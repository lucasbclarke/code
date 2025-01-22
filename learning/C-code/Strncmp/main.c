#include <stdio.h>
#include <string.h>

int main(){
	char * name = "John";
	if (strncmp(name, "John", 4) == 0) {
    		printf("Hello, John!\n");
	} else {
	    printf("You are not John. Go away.\n");
	}

	return 0;
}

