//
// Created by zs on 18-9-10.
//

#include <fcntl.h>
#include <zconf.h>
#include <stdlib.h>
#include <printf.h>
#include "../lib/error_functions.h"

static int idata = 111;

int main(int argc, char *argv[]) {
    int istack = 222;
    pid_t childPid;
    switch (childPid = fork()) {
        case -1:
            errExit("fork");
        case 0:     //子进程
            idata *= 3;
            istack *= 3;
            break;
        default:    //父进程
            sleep(3);
            break;
    }

    printf("PID = %ld %s idata=%d istack=%d\n", getpid(),
           (childPid == 0) ? "child" : "parent", idata, istack);

    exit(EXIT_SUCCESS);
}