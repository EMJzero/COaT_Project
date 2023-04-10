#include <stdio.h>
#include <math.h>

#define SIZE 8

//Square root implemented with the Newton-Raphson method
/*float NRsqrt(float n __attribute((annotate("scalar()")))) __attribute((annotate("scalar()")))
{
    float lo __attribute((annotate("scalar()"))) = n < 1 ? n : 1;
    float hi __attribute((annotate("scalar()"))) = n > 1 ? n : 1;
    float mid __attribute((annotate("scalar()")));
    //printf("Pre-loop\tmid:%f\tlo:%f\thi:%f\n", mid, lo, hi);

    while(100 * lo * lo < n) lo *= 10;
    while(0.01 * hi * hi > n) hi *= 0.1;

    for(int i = 0 ; i < 100 ; i++) {
        //printf("Loop:%d\t\tmid:%f\tlo:%f\thi:%f\n", i, mid, lo, hi);
        mid = (lo+hi)/2;
        if(mid*mid == n) return mid;
        if(mid*mid > n) hi = mid;
        else lo = mid;
    }

    return mid;
}*/

void normalize(float * in_v __attribute((annotate("scalar(range(0, 256))"))), float * out_v __attribute((annotate("scalar(range(0, 1))"))))
{
    float norm_squared __attribute((annotate("target('norm_squared') scalar(range(0, 524288))"))) = 0;
    for (int i = 0; i < SIZE; i++)
        norm_squared += in_v[i] * in_v[i];
    printf("Norm squared: %.4f\n", norm_squared);

    float norm __attribute((annotate("scalar(range(0, 1024))"))) = sqrtf(norm_squared); //NRsqrt(norm_squared);
    printf("Norm: %.4f\n", norm);
    if(norm != 0) 
    {
        for (int i = 0; i < SIZE; i++)
            out_v[i] = in_v[i] / norm;
    }
}

int main()
{
    float source[] = {4, 2, 7, 8, 2, 1, 5, 11};

    float in_v[SIZE] __attribute((annotate("target('in_vector') scalar(range(0, 256))")));
    float out_v[SIZE] __attribute((annotate("target('out_vector') scalar(range(0, 1))")));

    /*
        Doing the direct assignment:
            '''float in_v[SIZE] __attribute((annotate("target('in_vector') scalar(range(0, 256))"))) = {4, 2, 7, 8, 2, 1, 5, 11};'''
        does not work, the silly copying step from "source" is required, so that "fptoui" is used in the IR.
        Likely something is screwed up with the direct conversion via "llvm.memcpy.p0i8.p0i8.i64"...
    */

    for (int i = 0; i < SIZE; i++)
        in_v[i] = source[i];

    printf("Initial vector: ");
    for (int i = 0; i < SIZE; i++)
        printf("%.2f ", in_v[i]);
    putchar('\n');

    normalize(in_v, out_v);

    printf("Result: ");
    for (int i = 0; i < SIZE; i++)
        printf("%.2f ", out_v[i]);
    putchar('\n');

    return 0;
}