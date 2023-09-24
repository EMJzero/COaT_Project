#include <fenv.h>
#include <stdint.h>
#include <stdio.h>
#include "data.h"

#define A_ROWS 32
#define A_COLS 32
#define B_COLS 32

void mm(float * __restrict__ in_a  __attribute((annotate("target('input_a') scalar(range(0, 256))"))),
    float * __restrict__ in_b __attribute((annotate("target('input_a') scalar(range(0, 256))"))),
    float * __restrict__ out_c __attribute((annotate("target('result_c') scalar()"))))
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
    float in_a[A_ROWS * A_COLS];
    float in_b[A_COLS * B_COLS];
    float out_c[A_ROWS * B_COLS];

    int i, j;

    for (i = 0; i < A_ROWS; i++)
        for (j = 0; j < A_COLS; j++)
            in_a[i * A_COLS + j] = in_a_origin[i * A_COLS + j];

    for (i = 0; i < A_COLS; i++)
        for (j = 0; j < B_COLS; j++)
            in_b[i * B_COLS + j] = in_b_origin[i * B_COLS + j];

    /*printf("Input A:\n");
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
    }*/

    uint32_t cycles_high1 = 0;
    uint32_t cycles_high = 0;
    uint32_t cycles_low = 0;
    uint32_t cycles_low1 = 0;

    asm volatile("CPUID\n\t"
                 "RDTSC\n\t"
                 "mov %%edx, %0\n\t"
                 "mov %%eax, %1\n\t"
                 : "=r"(cycles_high), "=r"(cycles_low)::"%rax", "%rbx", "%rcx",
                   "%rdx");

    mm(in_a, in_b, out_c);

    asm volatile("RDTSCP\n\t"
                 "mov %%edx, %0\n\t"
                 "mov %%eax, %1\n\t"
                 "CPUID\n\t"
                 : "=r"(cycles_high1), "=r"(cycles_low1)::"%rax", "%rbx",
                   "%rcx", "%rdx");
    uint64_t end = (uint64_t)cycles_high1 << 32 | cycles_low1;
    uint64_t start = (uint64_t)cycles_high << 32 | cycles_low;
    if (end > start) {
      printf("Cycles: %li\n", end - start);
    }

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