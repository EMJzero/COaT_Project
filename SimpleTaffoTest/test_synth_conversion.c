#include <stdio.h>

#define SIZE 4

void synth_conversion_test(float * __restrict__ value, float * __restrict__ result)
{
    float fix_value[SIZE] __attribute((annotate("target('value') scalar(range(0, 256))")));
    for (int i = 0; i < SIZE; i++)
        fix_value[i] = value[i];

    for (int i = 0; i < SIZE; i++)
    {
        fix_value[i] = fix_value[i] * 2;
        fix_value[i] = fix_value[i] + 13 + i;
    }

    for (int i = 0; i < SIZE; i++)
        result[i] = fix_value[i];
}

// DOES NOT SYNTHESIZE FOR SOME REASON...
// But remove the unsigned integer argument and it does...

// My guess -> It wants the size of the arrays to allocate to be STATIC at compile time...

/*void synth_conversion_test(float * __restrict__ value, float * __restrict__ result, unsigned int LEN)
{
    float fix_value[LEN] __attribute((annotate("target('value') scalar(range(0, 256))")));
    for (int i = 0; i < LEN; i++)
        fix_value[i] = value[i];

    for (int i = 0; i < LEN; i++)
    {
        fix_value[i] = fix_value[i] * 2;
        fix_value[i] = fix_value[i] + 13 + i;
    }

    for (int i = 0; i < LEN; i++)
        result[i] = fix_value[i];
}*/

int main()
{
    float input[SIZE] = {27, 15, 35, 21};
    float result[SIZE];
    //synth_conversion_test(input, result, SIZE);
    synth_conversion_test(input, result);
    printf("%.2f, %.2f, %.2f, %.2f", result[0], result[1], result[2], result[3]);
    return  0;
}