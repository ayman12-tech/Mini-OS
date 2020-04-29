#include<stdio.h>
#include<sys/ipc.h>
#include<sys/shm.h>
#define SHM_KEY 0x1234

int main()
{
    int shmid = shmget(SHM_KEY, 1024, 0666|IPC_CREAT);
   
    char *str = (char*) shmat(shmid, NULL, 0);
   
    printf("Write Data");
    scanf("%s", str);
   
    printf("Data written in memory:%s\n", str);
   
    shmdt(str);
   
    return 0;
}


