//
// Created by zs on 18-8-28.
//

//
// Created by zs on 18-8-25.
//

#include <time.h>
#include <sys/times.h>
#include <sys/time.h>
#include "../lib/tlpi_hdr.h"
#include "../lib/error_functions.h"

static void showDate()
{
    struct timeval tv;
    gettimeofday(&tv,NULL);
    //第一个变量表示 距离 UTC 的秒数  也是time_t类型
    printf("data 秒 %ld \n",tv.tv_sec);
    //第二个变量表示 距离 UTC 的微秒数 微秒类型
    printf("data 微秒 %ld \n",tv.tv_usec);

    time_t time_sec = time(NULL);
    //time返回的也是一样的 距离UTC的秒数
    printf("time_sec %ld \n",time_sec);

    printf("转换后的时间 %s \n",ctime(&time_sec));
    printf("转换后的时间 %s \n",ctime(&tv.tv_sec));

    //分解时间转换
    struct tm *time_p;
    struct tm *time_local_p;
    time_p = gmtime(&time_sec);
    time_local_p = localtime(&time_sec);

    printf("转换后的时间 时 %d \n",time_p->tm_hour);
    printf("转换后的时间 分 %d \n",time_p->tm_min);
    printf("转换后的时间 秒 %d \n",time_p->tm_sec);

    printf("转换后的时间 时 %d \n",time_local_p->tm_hour);
    printf("转换后的时间 分 %d \n",time_local_p->tm_min);
    printf("转换后的时间 秒 %d \n",time_local_p->tm_sec);

}

static void displayProcessTimes(const char *msg) {
    struct tms t;
    //clock_t 是以时钟计时单元为单位度量时间的整型值
    clock_t clockTime;
    static long clockTicks = 0;
    if (msg != NULL)
        printf("%s", msg);

    if (clockTicks == 0) {
        //sysconf获取 每秒包含的时钟计时单元数
        //clock ticks 除以 时钟计时的总时间 可以获取秒数
        clockTicks = sysconf(_SC_CLK_TCK);
        if (clockTicks == -1)
            errExit("sysconfig");
    }

    //clock 返回取得的是总时间,包括用户和系统分别占用cpu的是时间和
    clockTime = clock();
    if (clockTime == -1)
        errExit("clock");

    printf("  clock returns: %li clocks-per-sec (%.2f secs)\n",
           (long) clockTime,
           (double) clockTime / CLOCKS_PER_SEC);

    //times 也是进程使用时间,但是在结构体tms中,分开了cpu和用户的占用时间
    if (times(&t) == -1)
        errExit("times");

    printf("  times() yields: user CPU = %.2f; system CPU: %.2f\n",
           (double) t.tms_utime / clockTicks,
           (double) t.tms_stime / clockTicks);

}

int main(int argc, char *argv[]) {
    int numCalls,j;
    printf("CLOCKS_PER_SEC = %ld sysconf(_SC_CLK_TCK)=%ld\n\n", (long)CLOCKS_PER_SEC,sysconf(_SC_CLK_TCK));

    displayProcessTimes("At program start: \n");

    numCalls = 1000000000;

    for(j =0;j<numCalls;j++)
        getpid();

    displayProcessTimes("After getppid() loop : \n");

    showDate();

    exit(EXIT_SUCCESS);
}



