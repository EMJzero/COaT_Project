#include <stdio.h>

void mm(float * __restrict__ in_a_f,
    float * __restrict__ in_b_f,
    float * __restrict__ out_c_f,
    unsigned int A_ROWS, unsigned int A_COLS, unsigned int B_COLS)
{

    float in_a[A_ROWS * A_COLS] __attribute((annotate("target('input_a') scalar(range(0, 256))")));
    float in_b[A_COLS * B_COLS] __attribute((annotate("target('input_b') scalar(range(0, 256))")));
    float out_c[A_ROWS * B_COLS] __attribute((annotate("target('result_c') scalar()")));
    float a __attribute((annotate("scalar(range(0, 256))"))), b __attribute((annotate("scalar(range(0, 256))")));
    float sum __attribute((annotate("scalar()"))) = 0;

    int i, j, k;

    for (i = 0; i < A_ROWS; i++)
        for (j = 0; j < A_COLS; j++)
            in_a[i * A_COLS + j] = in_a_f[i * A_COLS + j];

    for (i = 0; i < A_COLS; i++)
        for (j = 0; j < B_COLS; j++)
            in_b[i * B_COLS + j] = in_b_f[i * B_COLS + j];

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

    for (i = 0; i < A_ROWS; i++)
        for (j = 0; j < B_COLS; j++)
            out_c_f[i * B_COLS + j] = out_c[i * B_COLS + j];
}

int main()
{
    float source_a[] = {
        1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,
        1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,
        1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,
        1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,
        1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,
        1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,
        1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,
        1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,
        1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,
        1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,
        1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,
        1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,
        1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,
        1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,
        1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,
        1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16};
    float * source_b = source_a;

    static unsigned int A_ROWS = 16;
    static unsigned int A_COLS = 16;
    static unsigned int B_COLS = 16;

    float in_a[A_ROWS * A_COLS];
    float in_b[A_COLS * B_COLS];
    float out_c[A_ROWS * B_COLS];

    int i, j;

    /*
        Doing the direct assignment:
            '''float in_a[] __attribute((annotate("target('input_a') scalar(range(0, 16))"))) = {... numbers ...};'''
            '''float in_b[] __attribute((annotate("target('input_a') scalar(range(0, 16))"))) = {... numbers ...};'''
        does not work, the silly copying step from "source"s is required, so that "fptoui" is used in the IR.
        Likely something is screwed up with the direct conversion via "llvm.memcpy.p0i8.p0i8.i64"...
    */

    for (i = 0; i < A_ROWS; i++)
        for (j = 0; j < A_COLS; j++)
            in_a[i * A_COLS + j] = source_a[i * A_COLS + j];

    for (i = 0; i < A_COLS; i++)
        for (j = 0; j < B_COLS; j++)
            in_b[i * B_COLS + j] = source_b[i * B_COLS + j];

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

    mm(in_a, in_b, out_c, A_ROWS, A_COLS, B_COLS);

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