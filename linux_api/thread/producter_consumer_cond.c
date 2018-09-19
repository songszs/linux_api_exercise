//
// Created by zs on 18-9-17.
//

#include <pthread.h>
#include <thread_db.h>
#include <printf.h>
#include <zconf.h>
#include <stdlib.h>
#include <stdio.h>

static volatile int queue = 0;
static volatile int stop = 0;
static pthread_mutex_t mtx = PTHREAD_MUTEX_INITIALIZER;
static pthread_cond_t cond = PTHREAD_COND_INITIALIZER;


void *product_func(void *argv) {
    while (queue < 10) {
        pthread_mutex_lock(&mtx);
        if (queue < 10) {
            queue++;
            printf("tid = %ld 生产 1 ,剩余 %d \n", pthread_self(), queue);
        }
        pthread_mutex_unlock(&mtx);

        pthread_cond_signal(&cond);  //生产后发出信号给等待的线程  一般所有线程执行相同工作的话,是用唤醒一个,如果是不同工作的话是唤醒所有
    }
    printf("tid = %ld 队列满 退出 \n", pthread_self());
    stop++;
}

void *consumer_func(void *argv) {
    for (;;) {
        pthread_mutex_lock(&mtx);
        //如果队列是空的,则等待队列生产.并发送信号唤醒
        //这里用while不是if是因为wait被唤醒后还是要抢锁的,也就是说在抢到锁之前,可能别的线程已经修改了queue的值,故这里一般需要循环判断等待条件;另外也有可能出现虚假唤醒的情况
        while (queue == 0) {
            if (stop == 3) {
                printf("消费线程已经退出,tid = %ld 退出 \n", pthread_self());
                pthread_mutex_unlock(&mtx);
                return 0;
            }
            printf("tid = %ld 队列为空 继续等待被唤醒 \n", pthread_self());
            //等待生产者发出信号 其内部执行三步 解锁 睡眠 被唤醒抢锁.故需要配合互斥量使用
            //相对于循环判断来说,这里使用wait节省了性能
            pthread_cond_wait(&cond, &mtx);
        }
        //如果队列不为空,直接消费不用等待信号
        if (queue > 0) {
            queue--;
            printf("tid = %ld 消费 1 ,剩余 %d \n", pthread_self(), queue);
        }
        pthread_mutex_unlock(&mtx);
    }
}

int main(int argc, int argv[]) {
    thread_t product1, product2, product3;
    thread_t consumer1, consumer2, consumer3;

    pthread_create(&product1, NULL, product_func, NULL);
    pthread_create(&product2, NULL, product_func, NULL);
    pthread_create(&product3, NULL, product_func, NULL);

    pthread_create(&consumer1, NULL, consumer_func, NULL);
    pthread_create(&consumer2, NULL, consumer_func, NULL);
    pthread_create(&consumer3, NULL, consumer_func, NULL);

    pthread_join(product1, NULL);
    pthread_join(product2, NULL);
    pthread_join(product3, NULL);

    pthread_join(consumer1, NULL);
    pthread_join(consumer2, NULL);
    pthread_join(consumer3, NULL);

    exit(EXIT_SUCCESS);


}