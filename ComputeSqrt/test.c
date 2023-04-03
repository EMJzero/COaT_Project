//Square root implemented with the Newton-Raphson method
float NRsqrt(float n __attribute((annotate("scalar()")))) __attribute((annotate("scalar()"), always_inline)) {
    float lo = n < 1 ? n : 1;
    float hi = n > 1 ? n : 1;
    float mid;

    while(100 * lo * lo < n) lo *= 10;
    while(0.01 * hi * hi > n) hi *= 0.1;

    for(int i = 0 ; i < 100 ; i++) {
        mid = (lo+hi)/2;
        if(mid*mid == n) return mid;
        if(mid*mid > n) hi = mid;
        else lo = mid;
    }

    return mid;
}

int main() {
    float in __attribute((annotate("target('input') backtracking(5) scalar()")));

    printf("Sqrt of: ");
    scanf("%f", &in);

    float res = NRsqrt(in);
    printf("Result: %f\n", res);

    return 0;
}