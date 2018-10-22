//
// Created by zs on 18-10-12.
//

#include <fcntl.h>
#include <glob.h>
#include <getopt.h>
#include <zconf.h>
#include "../lib/error_functions.h"
#include "../lib/get_num.h"

int main(int argc, char *argv[])
{
    int flags,opt,fd;
    mode_t perms;
    size_t size;
    void *addr;

    flags = O_RDWR;

    while((opt=getopt(argc,argv,"cx"))!=-1)
    {
        switch (opt){
            case 'c':
                flags |= O_CREAT;
                break;
            case 'x':
                flags |=O_EXCL;
                break;
            default:
                break;
        }
    }

    if(optind +1 >=argc)
        usageErr(argv[0]);

    size = getLong(argv[optind+1],GN_ANY_BASE,"size");
    perms = (argc <= optind + 2) ? (S_IRUSR | S_IWUSR) : getLong(argv[optind + 2],GN_BASE_8,"octal-perms");

    fd = shm_open(argv[optind],flags,perms);

    if(fd == -1)
        errExit("shm_open");

    if(ftruncate(fd,size) == -1)
        errExit("ftruncate");

    addr = mmap(NULL,size,PROT_READ|PROT_WRITE,MAP_SHARED,fd,0);

}