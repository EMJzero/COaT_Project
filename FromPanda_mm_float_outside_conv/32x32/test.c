#include <stdio.h>

#define A_ROWS 32
#define A_COLS 32
#define B_COLS 32

void mm(float * __restrict__ in_a,
    float * __restrict__ in_b,
    float * __restrict__ out_c)
{
    float a __attribute((annotate("scalar(range(0, 256))"))), b __attribute((annotate("scalar(range(0, 256))")));
    float sum __attribute((annotate("scalar()"))) = 0;

    int i, j, k;

    // Only this part is effectively improved by TAFFO
    for (i = 0; i < A_ROWS; i++)
    {
        for (j = 0; j < B_COLS; j++)
        {
            #pragma unroll 4
            for (k = 0; k < A_COLS; k++)
            {
                a = in_a[i * A_COLS + k];
                b = in_b[k * B_COLS + j];
                sum += a * b;
            }
            out_c[i * B_COLS + j] = sum;
        }
    }
}

int main()
{
    float in_a[A_ROWS * A_COLS] __attribute((annotate("target('input_a') scalar(range(0, 256))")));
    float in_b[A_COLS * B_COLS] __attribute((annotate("target('input_b') scalar(range(0, 256))")));
    float out_c[A_ROWS * B_COLS] __attribute((annotate("target('result_c') scalar()")));

    // This code helps in the identification of TAFFO's convertion, that needs to be extracted
    // and copied in the test generation script.
    float temp __attribute((annotate("scalar(disabled)"))) = 24.6;
    temp = temp + 1;
    in_a[0] = temp;
    in_b[0] = temp;
    out_c[0] = temp;

    int i, j;

    for (i = 0; i < A_ROWS; i++)
        for (j = 0; j < A_COLS; j++)
            in_a[i * A_COLS + j] = (j+1)%16;

    for (i = 0; i < A_COLS; i++)
        for (j = 0; j < B_COLS; j++)
            in_b[i * B_COLS + j] = (j+1)%16;

    printf("Input A:\n");
    for (i = 0; i < A_ROWS; i++)
    {
        for (j = 0; j < A_COLS; j++)
        {
            printf("%.2f ", in_a[i * A_COLS + j]);
        }
        putchar('\n');
    }

    printf("Input B:\n");
    for (i = 0; i < A_COLS; i++)
    {
        for (j = 0; j < B_COLS; j++)
        {
            printf("%.2f ", in_b[i * B_COLS + j]);
        }
        putchar('\n');
    }

    mm(in_a, in_b, out_c);

    printf("Result:\n");
    for (i = 0; i < A_ROWS; i++)
    {
        for (j = 0; j < B_COLS; j++)
        {
            printf("%.2f ", out_c[i * B_COLS + j]);
        }
        putchar('\n');
    }
}