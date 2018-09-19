//
// Created by zs on 18-9-17.
//

#include <pthread.h>
#include <thread_db.h>
#include <printf.h>
#include <zconf.h>
#include <stdlib.h>
#include <stdio.h>

//共享的队列
static volatile int queue = 0;  //volatile关键字 总是保证每次读取该值的时候都是最新的,而非别的线程改变后,未及时更新的旧数据
static volatile int stop = 0;  //每个线程队列满的时候就会退出  起3个线程 故stop=3时,消费线程开始退出
static pthread_mutex_t mtx = PTHREAD_MUTEX_INITIALIZER;

//每个线程遇到队列满的时候就会退出
void *product_func(void *argv) {
    while (queue < 10) {
        pthread_mutex_lock(&mtx);
        if (queue < 10) {  //这里做判断是因为拿到互斥量后,queue的值有可能已经发生改变了.
            queue++;       //比如当queue是9时,进入等待互斥量,当别的线程释放了互斥量后,此时的queue已经是11或者是10了
            printf("tid = %ld 生产 1 ,剩余 %d \n", pthread_self(), queue);
        }
        pthread_mutex_unlock(&mtx);
    }
    printf("tid = %ld 队列满 退出 \n", pthread_self());
    stop++;
}

//消费线程 等待所有的生产线程都退出 且队列已经清空的时候才退出
void *consumer_func(void *argv) {
    for (;;) {
        if (queue > 0) {
            pthread_mutex_lock(&mtx);
            if (queue > 0) {
                queue--;
                printf("tid = %ld 消费 1 ,剩余 %d \n", pthread_self(), queue);
            }
            pthread_mutex_unlock(&mtx);
        } else {
            if (stop == 3) {
                printf("消费线程已经退出,tid = %ld 退出 \n", pthread_self());
                break;
            } else
                printf("tid = %ld 队列为空,等待产生 \n", pthread_self());
            sleep(1);
        }
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