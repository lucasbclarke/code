#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[]){
    
    if (argc < 2){
        printf("Usage: %s <user_input>\n", argv[0]);
        
        return 1;
    }

    char *userInput = argv[1];

    if (strchr(userInput, 'I')){
        printf("Roman Numeral = %s\n", userInput);
    } else if (strchr(userInput, 'V')){
        printf("Roman Numeral = %s\n", userInput);
    } else if (strchr(userInput, 'X')){
        printf("Roman Numeral = %s\n", userInput);
    } else if (strchr(userInput, 'L')){
        printf("Roman Numeral = %s\n", userInput);
    } else if (strchr(userInput, 'C')){
        printf("Roman Numeral = %s\n", userInput);
    } else if (strchr(userInput, 'D')){
        printf("Roman Numeral = %s\n", userInput);
    } else if (strchr(userInput, 'M')){
        printf("Roman Numeral = %s\n", userInput);
    }
    

    return 0;
}
