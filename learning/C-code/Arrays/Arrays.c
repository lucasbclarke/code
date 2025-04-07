#include <stdio.h>

int main(){
	int ages[3];

	ages[0] = 13;
	ages[1] = 50;
        ages[2] = 53;
	
    	int sum;
	sum = (ages[0] + ages[1] + ages[2]);
	
	printf("The total age of the family is %d\n", sum);

	return 0;
}
