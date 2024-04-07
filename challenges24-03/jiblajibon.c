#include <stdio.h>
#include <string.h>

int main() {
    char specific_password[] = "PW{N0th1ng_To_D0_f0r_CTF}";
    char entered_password[100];

    // Prompt user to enter the password
    printf("Please Enter Your Flag: ");
    scanf("%s", entered_password);

    // Check if the entered password matches the specific password
    if (strcmp(entered_password, specific_password) == 0) {
        printf("Congratulations! Here is the password: KREmeDGmiEhKazH3xqZtJdvN\n");
    } else {
        printf("Incorrect password. Try again.\n");
    }

    return 0;
}
