#include <stdio.h>
#include <math.h>

#define SIZE 8

int main()
{
    float v[] __attribute((annotate("target('vector') scalar()"))) = {4, 2, 7, 8, 2, 1, 5, 11};

    float norm_squared __attribute((annotate("scalar()"))) = 0;
    for (int i = 0; i < SIZE; i++)
        norm_squared += v[i] * v[i];

    float norm __attribute((annotate("scalar()"))) = sqrtf(norm_squared);
    printf("Norm: %.4f\n", norm);
    if(norm != 0) 
    {
        for (int i = 0; i < SIZE; i++)
            v[i] = v[i] / norm;
    }

    printf("Result: ");
    for (int i = 0; i < SIZE; i++)
        printf("%.2f ", v[i]);
    putchar('\n');

    return 0;
}