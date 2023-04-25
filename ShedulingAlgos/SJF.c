#include <stdio.h>

struct process
{
    int at, bt, order, rem, rt, wt, tt, terminated;
} pr[10];

int allprocessesTerminated(int n, struct process pr[10])
{
    int i;
    for (i = 0; i < n; i++)
    {
        if (!pr[i].terminated)
        {
            return 0;
        }
    }
    return 1;
}

int nextprocessTorun(int n, struct process pr[10], int ct, int x)
{
    int min_val = 100;
    int i;
    for (i = 0; i < n; i++)
    {
        if (pr[i].at <= ct && !pr[i].terminated)
        {
            if (pr[i].bt < min_val)
            {
                min_val = pr[i].bt;
                x = i;
            }
        }
    }
    return x;
}

int main()
{
    int i, j, n;
    printf("Enter the number of processes : ");
    scanf("%d", &n);
    for (i = 0; i < n; i++)
    {
        printf("PROCESS P(%d)\n", i);
        printf("Enter the arrival time ( AT ) : ");
        scanf("%d", &pr[i].at);
        printf("Enter the burst time ( BT ) : ");
        scanf("%d", &pr[i].bt);
        printf("Enter the order : ");
        scanf("%d", &pr[i].order);
        pr[i].rem = pr[i].bt;
        pr[i].wt = 0;
    }
    int ct = 0;
    int x = -1;
    int oldx=-1;
    while (!allprocessesTerminated(n, pr))
    {
        x = nextprocessTorun(n, pr, ct, x);
        if (x == -1)
        {
            printf("t=%d IDLE\n", ct);
            ++ct;
            continue;
        }
        if(oldx!=-1)
        {
           if( pr[oldx].rem!=0)
           {x=oldx;}
        }
        if (pr[x].rem == pr[x].bt)
        {
            pr[x].rt = ct - pr[x].at;
        }
        --pr[x].rem;
        if (pr[x].rem == 0)
        {
            pr[x].tt = (ct + 1) - pr[x].at;
            pr[x].terminated = 1;
        }
        for (i = 0; i < n; i++)
        {
            if (x == i)
            {
                continue;
            }
            if (pr[i].at <= ct && !pr[i].terminated)
            {
                ++pr[i].wt;
            }
        }
        printf("t=%d p%d\n", ct, x);
        ++ct;
        oldx=x;
    }
    for (i = 0; i < n; i++)
    {
        printf("PROCESS p%d\n", i + 1);
        printf("RT : %d\n", pr[i].rt);
        printf("WT : %d\n", pr[i].wt);
        printf("TT : %d\n\n", pr[i].tt);
    }
    return 0;
}
