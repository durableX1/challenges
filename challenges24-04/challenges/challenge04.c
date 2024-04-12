#include <stdio.h>
#include <string.h>

int main() {
    char specific_flag[] = "VM{Tr@nsper@ncy_1s_W0rking}";
    char entered_flag[100];

    // Prompt user to enter the password
    printf("Please enter the passowrd: ");
    scanf("%s", entered_flag);

    // Check if the entered password matches the specific password
    if (strcmp(entered_flag, specific_flag) == 0) {
        printf("\nIn python file!");
    } else {
        printf("Incorrect flag. Try again!!!\n");
    }

    return 0;
}
