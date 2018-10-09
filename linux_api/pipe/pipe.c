//
// Created by zs on 18-9-21.
//

#include <zconf.h>
#include <stdlib.h>
#include <string.h>
#include <sys/wait.h>
#include "../lib/error_functions.h"

#define BUF_SIZE 10

int main(int argc, char *argv[]) {
    int pfd[2];
    char buf[BUF_SIZE];
    ssize_t numRead;

    if (pipe(pfd) == -1)
        errExit("pipe");

    switch (fork()) {
        case -1:
            errExit("");
        case 0:                         //子进程
            if (close(pfd[1]) == -1)    //关闭写端
                errExit("close--child");
            for (;;) {
                numRead = read(pfd[0], buf, BUF_SIZE);   //循环读数据
                if (numRead == -1)
                    errExit("read");

                if (numRead == 0)
                    break;
                if (write(STDOUT_FILENO, buf, numRead) != numRead)  //读到的数据写到标准输出里
                    fatal("child- partial/failed write");

            }
            write(STDOUT_FILENO, "\n", 1);
            if (close(pfd[0] == -1))
                errExit("close");
            _exit(EXIT_SUCCESS);

        default:                      //父进程
            if (close(pfd[0] == -1))  //关闭管道 读端
                errExit("close-parent");
            if (write(pfd[1], argv[1], strlen(argv[1])) != strlen(argv[1])) //往管道写端写数据
                fatal("parent - partial/failed write");
            if (close(pfd[1]) == -1)
                errExit("close");
            wait(NULL);                 //等待子进程结束
            exit(0);

    }

}
