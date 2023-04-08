#include <stdio.h>

#define SIZE 8

//Square root implemented with the Newton-Raphson method
float NRsqrt(float n __attribute((annotate("scalar()")))) __attribute((annotate("scalar()"))) {
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
}

int main()
{
    float v[SIZE] __attribute((annotate("target('vector') scalar() backtracking(true)"))) = {4, 2, 7, 8, 2, 1, 5, 11};

    float norm_squared __attribute((annotate("scalar()"))) = 0;
    for (int i = 0; i < SIZE; i++)
        norm_squared += v[i] * v[i];
    printf("Norm squared: %.4f\n", norm_squared);

    float norm __attribute((annotate("scalar()"))) = NRsqrt(norm_squared);
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