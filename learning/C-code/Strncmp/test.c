#include <stdio.h>
#include <string.h>

int main(){
	char name[] = "Lucas1";
	if (strncmp(name, "Lucas", 6) == 0) {
	        printf("Hi Lucas!\n");
	} else {
	    printf("You are not lucas\n");
        }

        return 0;
}

