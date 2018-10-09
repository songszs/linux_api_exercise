//
// Created by zs on 18-9-21.
//

#include <sys/stat.h>
#include <errno.h>
#include <bits/fcntl-linux.h>
#include <fcntl.h>
#include <signal.h>
#include <stdio.h>
#include "fifo_seqnum_server.h"
#include "../lib/error_functions.h"

int main(int argc, char *argv[]) {

    int serverFd, dummyFd, clientFd;

    char clientFifo[CLIENT_FIFO_NAME_LEN];

    struct request req;
    struct response resp;

    int seqNum = 0;

    umask(0);

    if (mkfifo(SERVER_FIFO, S_IRUSR | S_IWUSR | S_IWGRP) == -1 && errno != EEXIST) //创建sever管道
        errExit("mkfifo %s", SERVER_FIFO);

    dummyFd = open(SERVER_FIFO, O_WRONLY); //打开管道的文件描述符

    if (dummyFd == -1)
        errExit("open %s", SERVER_FIFO);

    if (signal(SIGPIPE, SIG_IGN) == SIG_ERR)  //设置sigpipe的信号处理为忽略
        errExit("signal");

    for (;;) {
        //从管道中读取
        if (read(serverFd, &req, sizeof(struct reqeust)) != sizeof(struct request)) {
            fprintf(stderr, "error reading request;discarding \n");
            continue;
        }

        //构建客户端管道名字
        sprintf(clientFifo, CLIENT_FIFO_NAME_LEN, CLIENT_FIFO_TEMPLATE, req.pid);

        //打开客户端管道
        clientFd = open(clientFifo, O_WRONLY);

        if (clientFd == -1) {
            errMsg("open %s", clientFifo);
        }

        resp.seqNum = seqNum;

        //往客户端管道中写回复
        if (write(clientFd, &resp, sizeof(struct response)) != sizeof(struct response))
            fprintf(stderr, "error writing ot FIFO %s\n", clientFifo);

        //关闭客户端管道
        if (close(clientFd) == -1)
            errMsg("close");

        //更新序列数
        seqNum += req.seqLen;
    }


}