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
        printf("\nYou Have a *frankin* File it contains a lot of Passwords and only one is Unique");
    } else {
        printf("Incorrect password. Try again!!!\n");
    }

    return 0;
}
