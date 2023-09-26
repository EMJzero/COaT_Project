#include <stdio.h>

//Square root implemented with the Newton-Raphson method
void NRsqrt(float * n_f, float * result_f)
{
    float n __attribute((annotate("scalar(range(0, 4096) final) target('input')")));
    float lo __attribute((annotate("scalar(range(0, 4096) final) target('lo')")));
    float hi __attribute((annotate("scalar(range(0, 4096) final) target('hi')")));
    float mid __attribute((annotate("scalar(range(0, 4096) final) target('mid') backtracking(true)")));
    float result __attribute((annotate("scalar(range(0, 64)) errtarget('result') backtracking(true)")));

    n = *n_f;

    //lo = n < 1 ? n : 1;
    //hi = n > 1 ? n : 1;
    
    lo = 1;
    hi = 1;
    if(n < 1)
        lo = n;
    else
        hi = n;

    //printf("Pre-loop\tmid:%f\tlo:%f\thi:%f\n", mid, lo, hi);

    while(100 * lo * lo < n) lo *= 10;
    while(0.01 * hi * hi > n) hi *= 0.1;

    for(int i = 0 ; i < 100 ; i++) {
        //printf("Loop:%d\t\tmid:%f\tlo:%f\thi:%f\n", i, mid, lo, hi);
        mid = (lo+hi)/2;
        if(mid*mid == n) {
            result = mid;
            return;
        }
        if(mid*mid > n) hi = mid;
        else lo = mid;
    }

    result = mid;
    
    *result_f = result + 0.1;
}

int main()
{
    float in, res;

    printf("Sqrt argument (between 0 and 4096): ");
    scanf("%f", &in);
    //printf("You chose: %f\n", in);

    NRsqrt(&in, &res);
    printf("Result: %f\n", res);

    return 0;
}