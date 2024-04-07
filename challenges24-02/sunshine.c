#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/stat.h>

#define DIRECTORY_PATH "swithching/for/the/lake/not/is/"
#define FILE_NAME "possible"
#define FLAG "HD{8uT_M@y8e_I7s_7Ru3}"
#define CONTENT "it's easy"

int main() {
    char path[1024];
    char content[1024];
    struct stat statbuf;

    // Construct the full path
    snprintf(path, sizeof(path), "%s%s", DIRECTORY_PATH, FILE_NAME);

    // Check if the directory exists
    if (stat(DIRECTORY_PATH, &statbuf) == 0 && S_ISDIR(statbuf.st_mode)) {
        // Directory exists, check if the file exists
        if (stat(path, &statbuf) == 0 && S_ISREG(statbuf.st_mode)) {
            // File exists, attempt to read its content
            FILE *file = fopen(path, "r");
            if (file != NULL) {
                // Read content from the file
                fgets(content, sizeof(content), file);
                // Check if content matches the expected string
                if (strstr(content, CONTENT) != NULL) {
                    // Content matches, print the flag
                    printf("%s\n", FLAG);
                } else {
                    // Content doesn't match
                    printf("The content of the file is incorrect. Please write \"%s\" in the file \"%s\"\n", CONTENT, FILE_NAME);
                }
                // Close the file
                fclose(file);
            } else {
                // Unable to open the file
                perror("Unable to open file");
                return 1;
            }
        } else {
            // File doesn't exist
            printf("The file \"%s\" does not exist. Please create it and write \"%s\" in it.\n", FILE_NAME, CONTENT);
        }
    } else {
        // Directory doesn't exist
        printf("The directory \"%s\" does not exist. Please create it.\n", DIRECTORY_PATH);
    }

    return 0;
}
