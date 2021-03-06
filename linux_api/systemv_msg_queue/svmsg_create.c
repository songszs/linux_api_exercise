//
// Created by zs on 18-9-28.
//

#include <stdio.h>
#include <stdlib.h>
#include <getopt.h>
#include <bits/ipc.h>
#include <sys/ipc.h>
#include <fcntl.h>
#include <sys/msg.h>
#include "../lib/error_functions.h"
#include "../lib/get_num.h"

static void usageError(const char *progName, const char *msg)
{
    if(msg != NULL)
        fprintf(stderr,"%s",msg);

    fprintf(stderr,"Usage %s [-cx] {-f pathname | -k key | -p}","[octal-perms]\n",progName);

    fprintf(stderr," -c  use IPC_CREAT flag \n");
    fprintf(stderr," -c  use IPC_EXCL flag \n");
    fprintf(stderr," -f pathname Generate key using ftok() \n");
    fprintf(stderr," -k key use 'key' as key \n");
    fprintf(stderr," -p  use IPC_PRIVATE key \n");


    exit(EXIT_FAILURE);
}

int main(int argc,char *argv[])
{
    int numKeyFlags;
    int flags,msqid,opt;
    unsigned int perms;
    long lkey;
    key_t key;

    numKeyFlags = 0;
    flags=0;

    while((opt = getopt(argc,argv,"cf:k:px"))!= -1)
    {
        switch (opt)
        {
            case 'c': //私有创建一个key
                flags |= IPC_CREAT;
                break;
            case 'f': //根据文件创建一个key
                key = ftok(optarg,1);
                if(key == -1)
                    errExit("ftok");

                numKeyFlags++;
                break;
            case 'k':
                if(sscanf(optarg,"%li",&lkey)!=1)
                    cmdLineErr("-k option requires a numeric argument \n");
                key = lkey;
                numKeyFlags++;
                break;
            case 'p': //创建一个私有key
                key = IPC_PRIVATE;
                numKeyFlags++;
                break;
            case 'x': //如果key已经存在，那么就会调用失败并返回错误
                flags |= IPC_EXCL;
                break;

            default:
                usageError(argv[0],"bad option \n");
        }
    }

    if(numKeyFlags !=1)
        usageError(argv[0],"exactly one of the option \n");

    perms = (optind == argc) ? (S_IRUSR | S_IWUSR) : getInt(argv[optind],GN_BASE_8,"octal-perms");

    msqid = msgget(key,flags | perms);

    if(msqid == -1)
        errExit("msgget");
    printf("%d\n",msqid);

    exit(EXIT_SUCCESS);
}