#include<stdio.h>
#include<sys/types.h>
#include<unistd.h>

int main()
{
  printf("The process id is - %d",getpid());

  return 0;
}
