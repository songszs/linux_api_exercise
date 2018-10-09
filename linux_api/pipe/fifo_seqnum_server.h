//
// Created by zs on 18-9-21.
//

#include <zconf.h>


#define SERVER_FIFO "/tmp/server_fifo"
#define CLIENT_FIFO_TEMPLATE "/tmp/%ld_client"
#define CLIENT_FIFO_NAME_LEN (sizeof(CLIENT_FIFO_TEMPLATE))

#endif //LINUX_API_FIFO_SEQNUM_SERVER_H

struct request
{
    pid_t pid;
    int seqLen;
};

struct response
{
    int seqNum;
};
