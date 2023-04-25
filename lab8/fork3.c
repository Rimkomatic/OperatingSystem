#include<stdio.h>
#include<sys/types.h>
#include<unistd.h>

int main()
{
  fork();
  fork();

  printf("Hello \nPiD -> %d \n ", getpid());

  fork();

  printf("\nKIIT\n");

  return 0;
}
