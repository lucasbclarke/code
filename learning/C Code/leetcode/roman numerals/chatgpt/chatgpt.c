#include <stdio.h>

int main(int argc, char *argv[]) {
    // Check if there are at least two arguments (program name and user input)
    if (argc < 2) {
        printf("Usage: %s <user_input>\n", argv[0]);
        return 1;
    }

    // Access the user input from the second argument (argv[1])
    char *userInput = argv[1];
    
    // Process the user input
    printf("User input: %s\n", userInput);

    return 0;
}

