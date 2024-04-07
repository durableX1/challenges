#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/stat.h>
#include <string.h>
#include <errno.h>

#define DIRECTORY_TO_CHECK "why/you/told/about/pokemons" // Directory to be checked
#define FILE_TO_CHECK "idk" // File to be checked
#define FOLDER_TO_DELETE "faang" // Folder to be deleted
#define FILE_CONTENT "So many things I don't know about Pokemons" // Expected content of the file
#define FILE_EDIT_CONTENT "We Are A White Hat Hackers And We Prevent Attacks" // Content to edit into the file
#define FILE_EDIT_PATH ".pumpkin/honest/.honest/faang.txt" // Path to the file to be edited

int main() {
    // Check if the directory exists
    struct stat st;
    if (stat(DIRECTORY_TO_CHECK, &st) == 0 && S_ISDIR(st.st_mode)) {
        // Check if the file exists within the directory
        char filepath[256];
        snprintf(filepath, sizeof(filepath), "%s/%s", DIRECTORY_TO_CHECK, FILE_TO_CHECK);
        if (access(filepath, F_OK) == 0) {
            // Check if the file contains expected content
            FILE *file = fopen(filepath, "r");
            if (file != NULL) {
                char content[256];
                fgets(content, sizeof(content), file);
                fclose(file);
                // Remove newline character if present
                size_t len = strlen(content);
                if (len > 0 && content[len - 1] == '\n') {
                    content[len - 1] = '\0';
                }
                if (strcmp(content, FILE_CONTENT) == 0) {
                    // Print message if the file exists and contains expected content
                    printf("You have successfully created the directory, file, and written the expected content.\n");
                    
                    // Check if the folder to be deleted exists
                    if (access(FOLDER_TO_DELETE, F_OK) == 0) {
                        printf("You need to delete the folder: %s\n", FOLDER_TO_DELETE);
                    } else {
                        // Check if the file is edited with the correct content
                        FILE *editFile = fopen(FILE_EDIT_PATH, "r");
                        if (editFile != NULL) {
                            char editContent[256];
                            fgets(editContent, sizeof(editContent), editFile);
                            fclose(editFile);
                            // Remove newline character if present
                            len = strlen(editContent);
                            if (len > 0 && editContent[len - 1] == '\n') {
                                editContent[len - 1] = '\0';
                            }
                            if (strcmp(editContent, FILE_EDIT_CONTENT) == 0) {
                                printf("Congratulations! You've successfully completed the challenge.\n");
                                printf("Flag: PV{7ha7s_8asY_1s17_7ru9}\n");
                            } else {
                                printf("You need to edit the file with the correct content: %s\n", FILE_EDIT_PATH);
                            }
                        } else {
                            printf("You need to create and edit the file: %s\n", FILE_EDIT_PATH);
                        }
                    }
                    
                    return 0;
                } else {
                    printf("You need to write the expected content into the file: %s\n", FILE_TO_CHECK);
                }
            } else {
                printf("Failed to open the file: %s\n", FILE_TO_CHECK);
            }
        } else {
            printf("You need to create the file %s within the directory %s.\n", FILE_TO_CHECK, DIRECTORY_TO_CHECK);
        }
    } else {
        printf("You need to create directory %s first.\n", DIRECTORY_TO_CHECK);
    }

    // Print error message if stat() or access() fails
    if (errno != 0) {
        perror("Error");
    }

    return 0;
}

