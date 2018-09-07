//
// Created by zs on 18-9-4.
//

#include <signal.h>
#include <stdlib.h>
#include <string.h>
#include "../lib/get_num.h"
#include "../lib/error_functions.h"

//实时信号 linux 中共有64个信号,前32个信号是标准信号 后32个信号是实时信号
//实时信号 可以捕获到个数,并且可以携带数据 标准的信号不行
//第一个参数是要发送进程的  pid
//第二个参数是信号的       num   52
//第三个参数是附加的数据    data  888
//第四个参数是发送信号的数量 numSigs 10
int main(int argc, char *argv[]) {
    int sig, numSigs, j, sigData;

    union sigval sv;

    if (argc < 4 || strcmp(argv[1], "--help") == 0)
        usageErr("%s pid sig-num data [num-sigs] \n", argv[0]);

    sig = getInt(argv[2], 0, "sig-num");

    sigData = getInt(argv[3], GN_ANY_BASE, "data");

    numSigs = (argc > 4) ? getInt(argv[4], GN_GT_0, "num-sigs") : 1;

    for (j = 0; j < numSigs; j++) {
        sv.sival_int = sigData + j;
        if (sigqueue(getLong(argv[1], 0, "pid"), sig, sv) == -1)
            errExit("sigqueue %d", j);
    }

    exit(EXIT_SUCCESS);
}