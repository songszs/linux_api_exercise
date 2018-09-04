//
// Created by zs on 18-8-25.
//


#include <stdlib.h>
#include <printf.h>

int main(int argc, char *argv[])
{
    int j;
    //第一个参数 argc是参数个数
    //第二个参数 argv是参数的数组
    for(j=0;j<argc;j++)
        printf("argv[%d] = %s \n",j,argv[j]);

    exit(EXIT_SUCCESS);
}


