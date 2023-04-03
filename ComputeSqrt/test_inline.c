int main() {
    float in __attribute((annotate("target('input') scalar()")));

    printf("Sqrt of: ");
    scanf("%f", &in);

    float lo __attribute((annotate("scalar()"))) = in < 1 ? in : 1;
    float hi __attribute((annotate("scalar()"))) = in > 1 ? in : 1;
    float mid __attribute((annotate("target('result') scalar()")));

    while(100 * lo * lo < in) lo *= 10;
    while(0.01 * hi * hi > in) hi *= 0.1;

    for(int i = 0 ; i < 100 ; i++) {
        mid = (lo+hi)/2;
        if(mid*mid == in) break;
        if(mid*mid > in) hi = mid;
        else lo = mid;
    }

    printf("Result: %f\n", mid);

    return 0;
}