#include <stdio.h>
#include <string.h>

int main() {
    char specific_password[] = "VM{Tr@nsper@ncy_1s_W0rking}";
    char entered_password[100];

    // Prompt user to enter the password
    printf("Please enter the passowrd: ");
    scanf("%s", entered_password);

    // Check if the entered password matches the specific password
    if (strcmp(entered_password, specific_password) == 0) {
        printf("\nIn *barbican* directory you Have Read a Files and Follow the Directories I Think You found your Flag!");
    } else {
        printf("Incorrect password. Try again!!!\n");
    }

    return 0;
}
