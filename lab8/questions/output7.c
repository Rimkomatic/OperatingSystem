#include<stdio.h>
#include<sys/types.h>
#include "forkjoin.h"

int main()
{
  int a[10]={ 1,2,3,4,5,6,7,8,9,10 };
  int sum1=0,sum2=0,sum0;

  int id,i;

  id=process_fork(2);
  if(id==0)
  {
    for(i=0;i<10;i=i+1)
    {
      sum1=sum1+a[i];
    }
    printf( )
  }
}
