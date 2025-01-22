#include <stdio.h>

 int main(){
    int setupCost[3];
    
    int sum;

    setupCost[0] = 1500;
    setupCost[1] = 750;
    setupCost[2] = 1000;

    sum = (setupCost[0] + setupCost[1] + setupCost[2]);
    
    printf("%d\n", sum);
    
    return 0;
}
