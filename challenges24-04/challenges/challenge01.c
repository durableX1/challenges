#include <stdio.h>
#include <string.h>

int main() {
    char specific_flag[] = "PV{7ha7s_8asY_1s17_7ru9}";
    char entered_flag[100];

    // Prompt user to enter the password
    printf("Please enter the flag: ");
    scanf("%s", entered_flag);

    // Check if the entered password matches the specific password
    if (strcmp(entered_flag, specific_flag) == 0) {
        printf("\nYou Have a *frankin* File it contains a lot of Passwords and only one is Unique");
    } else {
        printf("Incorrect flag. Try again!!!\n");
    }

    return 0;
}
