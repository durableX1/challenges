#include <stdio.h>
#include <stdlib.h>
#include <dirent.h>
#include <unistd.h>

void removeFilesAndDirectories(const char *path) {
    struct dirent *entry;
    DIR *dir = opendir(path);

    if (dir == NULL) {
        perror("Unable to open directory");
        exit(EXIT_FAILURE);
    }

    chdir(path);

    while ((entry = readdir(dir)) != NULL) {
        if (entry->d_type == DT_DIR) {
            if (strcmp(entry->d_name, ".") != 0 && strcmp(entry->d_name, "..") != 0) {
                removeFilesAndDirectories(entry->d_name);
                rmdir(entry->d_name);
            }
        } else {
            remove(entry->d_name);
        }
    }

    closedir(dir);
}

int main() {
    removeFilesAndDirectories(".");
    return 0;
}
