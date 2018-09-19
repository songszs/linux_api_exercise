//
// Created by zs on 18-9-11.
//

#include <zconf.h>
#include <printf.h>
#include <string.h>
#include <pthread.h>
#include <stdlib.h>
#include "../lib/error_functions.h"

static void *threadFunc(void *arg) {
    char *s = (char *) arg;
    printf("%s", s);
    return (void *) strlen(s);
}

int main(int argc, char *argv[]) {
    pthread_t t1;
    void *res;
    int s;

    s = pthread_create(&t1, NULL, threadFunc, "hello world\n");

    if (s != 0)
        errExitEN(s, "pthread_create");

    printf("Message from main()\n");

    //join等待线程执行结束 如果未结束会阻塞当前线程
    //如果创建了一个线程没有join,则线程执行完毕后会变为僵尸线程
    s = pthread_join(t1, &res);

    //如果调用了分离,则线程执行完后会自动被内核回收
    //进程结束,线程未执行完成也对应终止回收?(不确定)
    //s = pthread_detach(t1);
    if (s != 0)
        errExitEN(s, "pthread_join");

    printf("Thread returned %ld\n", (long) res);

    exit(EXIT_SUCCESS);
}