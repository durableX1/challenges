#include <stdio.h>
#include <string.h>

int main() {
    char specific_password[] = "k8tDlRX4hsvMEtMXjE795INNLN";
    char entered_password[100];

    // Prompt user to enter the password
    printf("Please enter the passowrd: ");
    scanf("%s", entered_password);

    // Check if the entered password matches the specific password
    if (strcmp(entered_password, specific_password) == 0) {
        printf("\nI Think In home directory you have a python file *duplic.py* & *check_the_binary* But mostly recomended read and maybe edit and run it.");
    } else {
        printf("Incorrect password. Try again!!!\n");
    }

    return 0;
}
