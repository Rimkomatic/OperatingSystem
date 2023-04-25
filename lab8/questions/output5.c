#include<stdio.h>
#include<sys/types.h>
#include<unistd.h>

int main()
{
  printf("Parent: %d \n",getpid());

  fork();
  printf("Child: %d   Parent: %d \n",getpid(),getppid());

  fork();
  printf("Child: %d   Parent: %d \n",getpid(),getppid());


  return 0;
}
