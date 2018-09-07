//
// Created by zs on 18-9-5.
//

#include <signal.h>
#include <zconf.h>
#include <string.h>
#include <printf.h>
#include <bits/siginfo.h>
#include "../lib/error_functions.h"
#include "../lib/get_num.h"

static volatile int handlerSleepTime;
static volatile int sigCnt = 0;
static volatile int allDone = 0;

//信号处理函数 指定了SA_SIGINFO才会附带参数
//也需要是线程安全的
//如果多个信号同时抵达,编号低的信号优先获取
static void siginfoHandler(int sig, siginfo_t *si, void *ucontext) {

    if (sig == SIGINT || sig == SIGTERM) {
        allDone = 1;
        return;
    }
    sigCnt++;

    printf("caught signal %d \n", sig);

    printf(" si_sign0=%d,si_code=%d (%s),", si->si_signo, si->si_code,
           (si->si_code == SI_USER) ? "SI_USER" :
           (si->si_code == SI_QUEUE) ? "SI_QUEUE" : "other");

    printf(" si_value = %d ,si_uid = %ld \n",si->si_signo,si->si_code);

    sleep(handlerSleepTime);

}

//第一个参数 睡眠多久来接受信号
//第二个参数 信号处理函数的睡眠事件
int main(int argc, char *argv[]) {
    struct sigaction sa;
    int sig;

    sigset_t prevMask, blockMask;

    if (argc > 1 && strcmp(argv[1], "--help") == 0) {
        usageErr("%s PID is %ld \n", argv[0], (long) getpid());
    }

    printf("%s PID is %ld\n", argv[0], (long) getpid());

    handlerSleepTime = (argc > 2) ? getInt(argv[2], GN_NONNEG, "handler-sleep-time") : 1;

    //指定信号的处理函数
    sa.sa_handler = siginfoHandler;
    //指定信号处理函数的类型,即回调的时候会回调信号信息给函数
    sa.sa_flags = SA_SIGINFO;
    //填充所有信号
    sigfillset(&sa.sa_mask);

    for (sig = 1; sig < NSIG; sig++)
        if (sig != SIGTSTP && sig != SIGQUIT)
            //为每个信号设置相同的处理函数
            sigaction(sig, &sa, NULL);

    if (argc > 1) {
        sigfillset(&blockMask);
        //从信号集中删除信号,第二参数表示要删除的信号
        //删除中断信号
        sigdelset(&blockMask, SIGINT);
        //删除终止信号
        sigdelset(&blockMask, SIGTERM);

        //setmask 将信号集设置给信号掩码 第一个参数是掩码如何操作  第二个参数是新的信号集 第三个参数可以获取之前的信号集
        if (sigprocmask(SIG_SETMASK, &blockMask, &prevMask) == -1)
            errExit("sigprocmask");

        printf("%s : signals blocked - sleeping %s seconds \n", argv[0], argv[1]);
        sleep(getInt(argv[1], GN_GT_0, "block-time"));
        printf("%s: sleep complete \n", argv[0]);

        if (sigprocmask(SIG_SETMASK, &prevMask, NULL) == -1)
            errExit("sigprocmask");
    }

    while (!allDone)
        pause();

}