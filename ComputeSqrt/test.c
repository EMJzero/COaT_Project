#include <stdio.h>

//Square root implemented with the Newton-Raphson method
float NRsqrt(float n __attribute((annotate("scalar(range(0, 4096) final)")))) __attribute((annotate("scalar(range(0, 64) final)")))
{
    float lo __attribute((annotate("scalar(range(0, 4096) final)"))) = n < 1 ? n : 1;
    float hi __attribute((annotate("scalar(range(0, 4096) final)"))) = n > 1 ? n : 1;
    float mid __attribute((annotate("scalar(range(0, 4096) final)")));
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
    //float in __attribute((annotate("target('input') scalar(range(0, 4096) final) backtracking(true)")));
    float in;

    printf("Sqrt argument (between 0 and 4096): ");
    scanf("%f", &in);
    //printf("You chose: %f\n", in);

    float res __attribute((annotate("target('result') scalar(range(0, 64) final) backtracking(true)"))) = NRsqrt(in);
    printf("Result: %f\n", res);

    return 0;
}