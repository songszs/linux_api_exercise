//
// Created by zs on 18-9-4.
//

#include <zconf.h>
#include <printf.h>
#include <signal.h>
#include <stdio.h>
#include "../lib/get_num.h"
#include "../lib/error_functions.h"
#include "signal_functions.h"

static int sigCnt[NSIG];
/**
 * 信号处理时候由内核调用
 * 也就是说会有内核信号回调线程和当前执行线程两个线程对此变量修改
 * 所以应该设置为同步的
 */
static volatile sig_atomic_t gotSigint = 0;

//信号处理程序
static void handler(int sig) {
    if (sig == SIGINT)
        gotSigint = 1;
    else
        sigCnt[sig]++;

}

int main(int argc, char *argv[]) {
    int n, numSecs;

    //信号集
    sigset_t pendingMask, blockingMask, emptyMask;

    printf("%s: PID is %ld\n", argv[0], (long) getpid());

    for (n = 1; n < NSIG; n++)
        (void) signal(n, handler);

    if (argc > 1) {
        numSecs = getInt(argv[1], GN_GT_0, NULL);

        //初始化一个包含了所有信号的信号集
        sigfillset(&blockingMask);

        if (sigprocmask(SIG_SETMASK, &blockingMask, NULL) == -1)
            errExit("sigprocmask");

        printf("%s: sleeping for %d seconds \n", argv[0], numSecs);
        sleep(numSecs);
        if (sigpending(&pendingMask) == -1)
            errExit("sigpending");

        printf("%s: pending signals are: \n", argv[0]);
        printSigset(stdout, "\t\t", &pendingMask);

        //初始化一个未包含任何信号的信号集
        sigemptyset(&emptyMask);
        if (sigprocmask(SIG_SETMASK, &emptyMask, NULL) == -1)
            errExit("sigprocmask");
    }

    while (!gotSigint)
        continue;

    for (n = 1; n < NSIG; n++)
        if (sigCnt[n] != 0)
            printf("%s: signal %d caught %d time %s \n", argv[0], n, sigCnt[n], (sigCnt[n] == 1) ? "" : "s");

    exit(EXIT_SUCCESS);

}