#include <stdio.h>

int main()
{
    double __attribute((annotate("target('pi') scalar(range(0, 4) final)"))) pi = 0;
    double __attribute((annotate("scalar(range(0, 1) final)"))) z;
    int iters;

    printf("Number of iterations to perform: ");
    scanf("%d", &iters);

    for (int i = 0; i < iters; i++)
    {
        z = 1.0 / (2 * i + 1);
        if ((i % 2) == 1)
            z = -z;
        pi += z;
    }

    printf("The value of pi is: %f\n", pi * 4);

    return 0;
}