//
// Created by zs on 18-9-4.
//

#include <termio.h>
#include <string.h>
#include <printf.h>
#include <signal.h>
#include <stdlib.h>
#include "../lib/error_functions.h"
#include "../lib/get_num.h"

int main(int argc, char *argv[]) {
    int numSigs, sig, j;
    pid_t pid;

    if (argc < 4 || strcmp(argv[1], "--help") == 0)
        usageErr("%s pid num-sigs sig-num [sig - num - 2] \n", argv[0]);

    pid = getLong(argv[1], 0, "PID");
    numSigs = getInt(argv[2], GN_GT_0, "sig-num");
    sig = getInt(argv[3], 0, "sig-num");

    printf("%s: sending singal %d to process %ld %d times \n",
           argv[0], sig, (long) pid, numSigs);

    for (j = 0; j < numSigs; j++)
        if (kill(pid, sig) == -1)
            errExit("kill");

    if (argc > 4)
        if (kill(pid, getInt(argv[4], 0, "sig-num-2")) == -1)
            errExit("kill");

    printf("%s : exitting \n", argv[0]);

    errExit(EXIT_SUCCESS);

}