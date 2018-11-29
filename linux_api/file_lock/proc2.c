//
// Created by zs on 18-10-23.
//

#include <fcntl.h>
#include "../lib/error_functions.h"
#include <sys/file.h>
#include <zconf.h>
#include <string.h>
#include <pthread.h>
#include <printf.h>

#define FILE_PATH './file'
#define WRITE_CONTENT "proc2 write"

int main(int argc, char *argv[]) {
    int fd, lock;

    fd = open((const char *) FILE_PATH, O_RDWR);
    if (fd == -1)
        errExit("open");

    //LOCK_SH 在fd引用的文件上放置一把共享锁 是共享锁定，即读的时候文件处于共享锁状态，别人只能读，不能写。如果直接写，将是一段时间的等待，别人读完了，解锁后才恢复，也才能写
    //LOCK_EX 在fd引用上文件上放置一把互斥锁 是写锁定，即写入的时候文件处于写锁状态，别人不能写也不能读。如果直接读，将是一段时间的等待，别人写完了，解锁后才恢复，也才能读
    //LOCK_UN 解锁fd引用的文件
    //LOCK_NB 发起一个非阻塞锁请求 在读取或者写入时，如果文件被锁，则立刻返回通知访问的文件被锁了，不用再等待。不能单使用需要与前面两种方式配合使用
    lock = LOCK_EX;

    char *str = WRITE_CONTENT;

    int step = 0;
    while (1) {
        sleep(3);
        step++;
        if (step > 10)
            break;
        if (step % 3 != 0)
        {
            printf("proc 2 跳过 继续等待 \n");
            continue;
        }
        if (flock(fd, lock)) {
            write(fd, str, strlen(WRITE_CONTENT));
            printf("proc 2写数据 \n");
            sleep(3);
            flock(fd, LOCK_UN);
        }
    }
    printf("proc2 结束 \n");
    close(fd);
    errExit(0);
}