#include <stdio.h>

int* sumZero(int n, int* returnSize) {
    int arr[n];
    int sum;
    for (int i = 0; i != '\0'; i++) {
        sum = arr[i];
        printf("%d\n", i);
    }
    return returnSize;
}

int main() {
	sumZero(5, 0);
	sumZero(3, 0);
	sumZero(0, 0);
}
