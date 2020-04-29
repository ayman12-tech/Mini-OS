#include <sys/ipc.h>
#include <sys/shm.h>  
#include <stdio.h>  
#define SHM_KEY 0x1234
 
int main()
{         // shmget returns an identifier in shmid    
  int shmid = shmget(SHM_KEY,1024,0666|IPC_CREAT);        
// shmat to attach to shared memory      
char *str = (char*) shmat(shmid,NULL,0);        
printf("Data read from memory: %s\n",str);            
 //detach from shared memory  
shmdt(str);          
// destroy the shared memory      
shmctl(shmid,IPC_RMID,NULL);        
return 0;
}
