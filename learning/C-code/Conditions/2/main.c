#include <stdio.h>

int main(){
	int foo = 3;
	int bar = 2;

	if (foo < bar) {
	    printf("foo is smaller than bar.\n");
	} else if (foo == bar) {
	    printf("foo is equal to bar.\n");
	} else {
	    printf("foo is greater than bar.\n");
	}

	return 0;
}
