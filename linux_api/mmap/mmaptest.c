//
// Created by zs on 19-6-18.
//

#include <fcntl.h>
#include <sys/mman.h>
#include <stdlib.h>

#include <unistd.h>
#include <zconf.h>
#include <printf.h>

int main(int argc, char *argv[]) {
    int mmap_tmp_fd;

    mmap_tmp_fd = open("mmap_tmp.txt", O_RDONLY);

//    long offset = 5;
//    long length = 5;
//
//
//    /**
//     * 一定要计算为页对齐的offset
//     * 比如说 一页数据大小为4096
//     * 如果offset在第三页数据里，那么pa_offset就应该是第二页的基址即4096*2
//     * 如果offset在第二页数据里，那么pa_offset就应该是第二页的基址即4096*1
//     */
//    long pa_offset = offset & ~(sysconf(_SC_PAGE_SIZE) - 1);
//    printf("page offset size %ld", pa_offset);

    /**
     * 第一个参数 addr
     * 第二参数 length 要映射的字节的大小
     * 第三个参数
     * 第四个参数
     * 第五个参数 文件描述符
     * 第六次参数 在文件中的偏移量 一定要是页面的整数倍
     */
    char *addr = mmap(NULL, 20, PROT_READ|PROT_WRITE, MAP_PRIVATE, mmap_tmp_fd, 0);

    ssize_t s;
    s = write(STDOUT_FILENO, addr, 20);

    munmap(addr, 20);
    close(mmap_tmp_fd);
    exit(EXIT_SUCCESS);


}