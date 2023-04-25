#include<stdio.h>

int main()
{
  int n,i,prevProcessWT,j,temp,at[20],bt[20],wt[20],tat[20];

  printf("Enter the number of process: ");
  scanf("%d",&n);
  
  int p[n];
  for(i=1;i<=n;i++)
  {
    p[i-1]=i;
  }

  printf("Enter the AT for the processes: ");
  for(i=0;i<n;i++)
  {
    printf("\np[%d] -> ",i+1);
    scanf("%d",&at[i]);
  }

  printf("Enter the BT for the processes: ");
  for(i=0;i<n;i++)
  {
    printf("\np[%d] -> ",i+1);
    scanf("%d",&bt[i]);
  }


  for(i=0;i<n;i++)
  {
    for(j=i+1;j<n;j++)
    {
      if(at[i]>at[j])
      {
        // SWAP AT
        temp=at[i];
        at[i]=at[j];
        at[j]=temp;

        //SWAP BT
        temp=bt[i];
        bt[i]=bt[j];
        bt[j]=temp;

        //SWAP PROCESS
        temp=p[i];
        p[i]=p[j];
        p[j]=temp;
      }
    }
  }


  for(i=0;i<n;i++)
  {
    wt[i]=0;
  }

  //code for waiting time---------
  prevProcessWT=0;
  for(i=0;i<n;i++)
  {
    for(j=0;j<i;j++)
    {
      prevProcessWT=prevProcessWT+bt[j];
    }
    if(prevProcessWT>at[i])
    {
      wt[i]=prevProcessWT-at[i];
      prevProcessWT=0;
    }
    else
    {
      prevProcessWT=at[i]-prevProcessWT;
    }
  }


  for(i=0;i<n;i++)
  {
    for(j=i+1;j<n;j++)
    {
      if(p[i]>p[j])
      {
        // SWAP AT
        temp=at[i];
        at[i]=at[j];
        at[j]=temp;

        //SWAP BT
        temp=bt[i];
        bt[i]=bt[j];
        bt[j]=temp;

        //SWAP PROCESS
        temp=p[i];
        p[i]=p[j];
        p[j]=temp;

        //SWAP WT
        temp=wt[i];
        wt[i]=wt[i];
        wt[j]=temp;
      }
    }
  }

  printf("\nProcess \tAT \tBT \tWT");
  for(i=0;i<n;i++)
  {
    printf("\n%d \t\t%d \t%d \t%d ",p[i],at[i],bt[i],wt[i]);
  }

  return 0;
}
