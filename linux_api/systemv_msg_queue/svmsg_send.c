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

struct mbuf
{
    long mtype;
    char mtext[MAX_MTEXT];
};

static void usageError(const char *progName,const char *msg)
{
    if(msg!=NULL)
        fprintf(stderr,"%s",msg);
    exit(EXIT_FAILURE);
}

int main(int argc,char *argv[])
{
    int msqid,flags,msglen;
    struct mbuf msg;
    int opt;

    flags = 0;

    //获取命令行参数
    while((opt = getopt(argc,argv,"n")) != -1)
    {
        if(opt == 'n')
            flags |= IPC_NOWAIT;
        else
            usageError(argv[0],NULL);
    }

    //获取消息id
    msqid = getInt(argv[optind],0,"msqid");
    //获取消息类型
    msg.mtype = getInt(argv[optind+1],0,"msqid");

    if(argc>optind +2){
        //消息长度
        msglen = strlen(argv[optind+2])+1;
        if(msglen > MAX_MTEXT)
            cmdLineErr("msg too long");
        //复制消息内容
        memcpy(msg.mtext,argv[optind+2],msglen);
    } else
        msglen = 0;

    //发送消息
    if(msgsnd(msqid,&msg,msglen,flags)==-1)
        errExit("msgsnd");

    errExit(EXIT_SUCCESS);
}