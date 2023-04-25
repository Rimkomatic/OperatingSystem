#include <stdio.h>

struct process
{
    int at, bt, rem, rt, wt, tt, terminated, rem_slice, token;
} pr[10];

int token = 0;

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
void enqueue(int n, struct process arr[], int x)
{
    if (x > (n - 1))
        return;
    arr[x].token = token++;
}
int dequeue(int n, struct process arr[])
{
    int min_val = 1000, x = -1, i;
    for (i = 0; i < n; ++i)
    {
        if (arr[i].token < min_val)
        {
            min_val = arr[i].token;
            x = i;
        }
    }
    arr[x].token = 1000;
    return x;
}

int nextprocessTorun(int n, struct process arr[], int ct, int q)
{
    int x = -1, i;
    for (i = 0; i < n; i++)
    {
        if (arr[i].rem_slice > 0)
            return i;
    }
    x = dequeue(n, arr);
    if (x != -1)
        arr[x].rem_slice = q;
    return x;
}

int main()
{
    int i, j, n, q;
    printf("Enter the number of processes : ");
    scanf("%d", &n);
    printf("Enter time quantum : ");
    scanf("%d", &q);
    for (i = 0; i < n; i++)
    {
        printf("PROCESS P(%d)\n", i);
        printf("Enter the arrival time ( AT ) : ");
        scanf("%d", &pr[i].at);
        printf("Enter the burst time ( BT ) : ");
        scanf("%d", &pr[i].bt);
        pr[i].rem = pr[i].bt;
        pr[i].wt = 0;
        pr[i].terminated = 0;
        pr[i].rem_slice = 0;
        pr[i].token = 1000;
    }
    int ct = 0, x = -1;
    while (!allprocessesTerminated(n, pr))
    {
        for (i = 0; i < n; i++)
        {
            if (pr[i].at == ct)
                enqueue(n, pr, i);
        }

        if (x != -1 && !pr[x].terminated && pr[x].rem_slice == 0)
            enqueue(n, pr, x);

        x = nextprocessTorun(n, pr, ct, q);
        if (x == -1)
        {
            printf("t=%d IDLE\n", ct);
            ++ct;
            continue;
        }
        if (pr[x].rem == pr[x].bt)
        {
            pr[x].rt = ct - pr[x].at;
        }
        --pr[x].rem;
        --pr[x].rem_slice;
        if (pr[x].rem == 0)
        {
            pr[x].tt = (ct + 1) - pr[x].at;
            pr[x].terminated = 1;
            pr[x].rem_slice = 0;
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
