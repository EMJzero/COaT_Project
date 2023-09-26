#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define len 8

void normalize(float * in_v_f, float * out_v_f) {
    float in_v[len] __attribute((annotate("target('in_vector') scalar(range(0, 256))")));
    float out_v[len] __attribute__((annotate("errtarget('out_v') scalar()")));
    
    for (int i = 0; i < len; i++)
        in_v[i] = in_v_f[i];

    float norm_squared __attribute((annotate("scalar(range(0, 524288))"))) = 0;
    
    #pragma unroll(8)
    for (int i = 0; i < len; i++)
        norm_squared += in_v[i] * in_v[i];
    //printf("Norm squared: %.10f\n", norm_squared);

    float norm __attribute((annotate("scalar(range(0, 1024))"))) = sqrtf(norm_squared); //NRsqrt(norm_squared);
    //printf("Norm: %.10f\n", norm);
    
    if(norm != 0) {
        for (int i = 0; i < len; i++)
            out_v[i] = in_v[i] / norm;
    }

    for (int i = 0; i < len; ++i) {
        out_v_f[i] = out_v[i];
    }
}

int main() {
    float in_v[len] = {4, 2, 7, 8, 2, 1, 5, 11};
    float out_v[len];

    printf("Initial vector: ");
    for (int i = 0; i < len; i++)
        printf("%.2f ", in_v[i]);
    putchar('\n');

    normalize(in_v, out_v);

    printf("Result: ");
    for (int i = 0; i < len; i++)
        printf("%.2f ", out_v[i]);
    putchar('\n');

    return 0;
}