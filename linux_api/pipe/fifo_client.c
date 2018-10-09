//
// Created by zs on 18-9-25.
//

#include <sys/stat.h>
#include <stdio.h>
#include <errno.h>
#include <stdlib.h>
#include <fcntl.h>
#include "fifo_seqnum_server.h"
#include "../lib/error_functions.h"

static char clientFifo[CLIENT_FIFO_NAME_LEN];

static void removeFifo(void)
{
    unlink(clientFifo);
}

int main(int argc, char *argv[])
{
    int serverFd,clientFd;
    struct request req;
    struct response resp;

    umask(0);

    sprintf(clientFifo,CLIENT_FIFO_NAME_LEN,CLIENT_FIFO_TEMPLATE,(long)getpid());
    if(mkfifo(clientFifo,S_IRUSR | S_IWUSR | S_IWGRP) == -1 && errno != EEXIST)
        errExit("mkfifo %s",clientFifo);

    if(atexit(removeFifo) !=0)
        errExit("atexit");

    req.pid = getpid();
    req.seqLen = 1;
    serverFd = open(SERVER_FIFO,O_WRONLY);

    if(serverFd == -1)
        errExit("open %s",SERVER_FIFO);

    if(write(serverFd,&req,sizeof(struct request)) != sizeof(struct request))
        fatal("cant write to server");

    clientFd = open(clientFifo,O_RDONLY);
    if(clientFd == -1)
        errExit("open %s",clientFifo);

    if(read(clientFd,&resp,sizeof(struct response))!=sizeof(struct response))
        fatal("cant read response from server");

    errExit(EXIT_SUCCESS);

}