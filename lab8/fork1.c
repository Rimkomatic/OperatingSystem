#include<stdio.h>
#include<sys/types.h>
#include<unistd.h>

int main()
{
  fork();

  printf("Hello \n PID -> %d",getpid());

  printf("\n-------------------\n");
  return 0;
}
