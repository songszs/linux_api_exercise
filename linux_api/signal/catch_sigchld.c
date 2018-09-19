//
// Created by zs on 18-9-17.
//

#include <zconf.h>
#include <errno.h>
#include <printf.h>
#include <stdio.h>
#include <wait.h>
#include <stdlib.h>
#include "../lib/error_functions.h"
#include "../lib/get_num.h"

static volatile int numLiveChildren = 0;

static void sigchldHandler(int sig) {
    int status, savedErrno;
    pid_t childPid;

    savedErrno = errno;

    printf("handler: Caught SIGCHLD \n");

    while ((childPid = waitpid(-1, &status, WNOHANG)) > 0) {
        printf("handler : reaped child %ld 0", childPid);
        printf("status %d", status);
        numLiveChildren--;
    }

    if (childPid == -1 && errno != ECHILD)
        errMsg("waitPid");

    sleep(5);
    printf("handler return \n");

    errno = savedErrno;
}

int main(int argc, char *argv[]) {
    int j, sigCnt;
    sigset_t blockMask, emptyMask;
    struct sigaction sa;

    setbuf(stdout, NULL);
    sigCnt = 0;
    numLiveChildren = argc - 1;

    sigemptyset(&sa.sa_mask);
    sa.sa_flags = 0;
    sa.sa_handler = sigchldHandler;

    if (sigaction(SIGCHLD, &sa, NULL) == -1)
        errExit("sigaction");

    sigemptyset(&blockMask);

    sigaddset(&blockMask, SIGCHLD);
    if (sigprocmask(SIG_SETMASK, &blockMask, NULL) == -1)
        errExit("sigprocmask");

    for (j = 1; j < argc; j++) {
        switch (fork()) {
            case -1:
                errExit("fork");
            case 0:
                sleep(getInt(argv[j], GN_NONNEG, "child-sleep-time"));
                _exit(EXIT_SUCCESS);
            default:
                break;
        }
    }

    sigemptyset(&emptyMask);

    while (numLiveChildren > 0) {
        //挂起进程,等待任意信号到来,其中参数表示是需要阻塞的信号.信号到来时先进到信号处理,最后在此函数返回
        if (sigsuspend(&emptyMask) == -1 && errno != EINTR)
            errExit("sigsuspend");
        sigCnt++;
    }

    printf("all %d children have terminated;SIGCHLD was caught %d times",argc-1,sigCnt);

    exit(EXIT_SUCCESS);

}