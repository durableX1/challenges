#include <stdio.h>
#include <string.h>

int main() {
    char specific_flag[] = "PY{G00d_Th@T_u_c@nnotrun_binary}";
    char entered_flag[100];

    // Prompt user to enter the password
    printf("Please enter the passowrd: ");
    scanf("%s", entered_flag);

    // Check if the entered password matches the specific password
    if (strcmp(entered_flag, specific_flag) == 0) {
        printf("\nIn *barbican* directory you Have Read a Files and Follow the Directories I Think You found your Flag!");
    } else {
        printf("Incorrect flag. Try again!!!\n");
    }

    return 0;
}
