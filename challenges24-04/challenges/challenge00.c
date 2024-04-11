#include <stdio.h>
#include <string.h>

int main() {
    char specific_flag[] = "PM{Haa9_B6sT_C6nT6R}";
    char entered_flag[100];

    // Prompt user to enter the password
    printf("Please enter the flag: ");
    scanf("%s", entered_flag);

    // Check if the entered password matches the specific password
    if (strcmp(entered_flag, specific_flag) == 0) {
        printf("You Have a *dude* binary File run This and Follow the Instructions\n");
    } else {
        printf("Incorrect password. Try again.\n");
    }

    return 0;
}
