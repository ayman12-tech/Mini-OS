#include <unistd.h>
	#include <sys/types.h>
	#include <stdio.h>
	#include <stdlib.h>
	int main()
	{
	        pid_t pid, p;
	        int n, *num, i, j, temp;
	        pid = getpid();
	        printf("Parent process executing\n");
	        printf("Enter the length of the array: ");
	        scanf("%d",&n);
	        num = (int*)malloc(sizeof(int)*n);
	        printf("Enter the array:\n");
	        for(i = 0 ; i < n ; i++)
	                scanf("%d",&num[i]);
	        p = fork();
	        if(p == 0 )
	        {
	                printf("Child process exucuting\n");
	                for(i = 0 ; i < n ; i++ )
	                {
	                        for(j = 0 ; j < n-i-1 ; j++)
	                        {
	                                if(num[j] > num[j+1])
	                                {
	                                        temp = num[j];
	                                        num[j] = num[j+1];
	                                        num[j+1] = temp;
	                                }
	                        }
	                }
	                printf("The sorted array is:\n");
	                for(i = 0 ; i < n ; i++)
	                {
	                        printf("%d ",num[i]);
	                }
	                printf("\n");
	        }
	return 0;
	}
