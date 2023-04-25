#include<stdio.h>
#include<sys/types.h>
#include<unistd.h>

int main()
{
  fork();
  fork();

  printf("Hello \n PID -> %d \n",getpid());
  printf("--------------------------------\n");

  return 0;
}
