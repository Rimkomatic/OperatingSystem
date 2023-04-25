#include<stdio.h>
#include<sys/types.h>
#include<unistd.h>

int main()
{
  int i;
  printf("Hello before fork \n");

  printf("i: %d\n",i);

  i=fork();
  printf("\n");

  if(i==0)
  {
    printf("The child has started\n");
    printf("child printing first time \n");
    printf("getpid: %d  getppid: %d \n ",getpid(),getppid());
    sleep(5);
    printf("Child printing 2nd time: \n");
    printf("getpid: %d  getppid: %d \n",getpid(),getppid());

  }
  else
  {
    printf("Parent has started: \n");
    printf("getpid:  %d    getppid: %d  \n",getpid(),getppid());
    printf("\n");
  }
  printf("Hello after fork!!\n");
  return 0;
}
