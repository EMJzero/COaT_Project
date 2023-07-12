#include <stdio.h>

void compute_pi(int iters, float * res)
{
    double __attribute((annotate("target('pi') scalar(range(0, 3.14159266) final)"))) pi = 0;
    double __attribute((annotate("scalar(range(0, 1) final)"))) z;

    for (int i = 0; i < iters; i++)
    {
        z = 1.0 / (2 * i + 1);
        if ((i % 2) == 1)
            z = -z;
        pi += z;
    }

    // when using this, the new argument names become Pd36 and Pd37
    //printf("Value: %f\n", pi);
    *res = pi * 4;
}

int main()
{
    int iters;

    printf("Number of iterations to perform: ");
    scanf("%d", &iters);

    float pi;
    compute_pi(iters, &pi);

    printf("The value of pi is: %f\n", pi);

    return 0;
}