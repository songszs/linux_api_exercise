//
// Created by zs on 18-9-27.
//
#include <stdio.h>
#include <stdlib.h>
#include <getopt.h>
#include <string.h>

#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/msg.h>

#include "../lib/get_num.h"
#include "../lib/error_functions.h"

#define MAX_MTEXT 1024

struct mbuf {
    long mtype;
    char mtext[MAX_MTEXT];
};

static void usageError(const char *progName, const char *msg) {
    if (msg != NULL)
        fprintf(stderr, "%s", msg);
    exit(EXIT_FAILURE);
}

int main(int argc, char *argv[]) {
    int msqid, flags,type,maxBytes;
    ssize_t msglen;
    struct mbuf msg;
    int opt;

    maxBytes = 0;
    flags = 0;
    type = 0;

    //获取命令行参数
    while ((opt = getopt(argc, argv, "n")) != -1) {
        switch (opt) {
            case 'e':
                flags |= MSG_NOERROR;
                break;
            case 'n':
                flags |= IPC_NOWAIT;
                break;
            case 't':
                type = atoi(optarg);
                break;
            case 'x':
                break;
            default:
                usageError(argv[0], NULL);
        }
    }
    //获取消息id
    msqid = getInt(argv[optind], 0, "msqid");
    //获取消息类型
    maxBytes = (argc > optind + 1) ? getInt(argv[optind + 1], 0, "max-bytes") : MAX_MTEXT;

    //接受消息
    msglen = msgrcv(msqid, &msg, maxBytes, type, flags);

    if (msglen == -1)
        errExit("msgrcv");

    errExit(EXIT_SUCCESS);
}