//
// Created by zs on 18-12-3.
//

#include <printf.h>
#include <libio.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define FILE_NAME "/home/zs/workspace/linux_program_test/linux_api/file_api/test.txt"

int main(int argc, char *argv[]) {
    FILE *test = fopen(FILE_NAME, "r");

    if(test == NULL)
    {
        printf("siz hhaha");
        return 0;
    }


    long size;
    fseek(test, 0, SEEK_END);
    size = ftell(test);
    printf("size %d \n", size);
    rewind(test);

    char *content = malloc(1);
    size_t size_read = fread(content, 1, size, test);
    printf("read size:%d \n", size_read);
    printf("content: %s \n", content);
    printf("content: %c \n", content[10]);

    char *hello = "hello world+6++";

    int length = strlen(hello);
    fwrite(hello, 1, length, test);
    fflush(test);
    printf("length %d \n", length);
    printf("sizeof %d \n", sizeof(hello));

}