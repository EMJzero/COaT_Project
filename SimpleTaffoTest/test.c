#include <stdio.h>

float foo() __attribute((annotate("scalar(range(-1, 1))"))) {
    return 0.2;
}

int main(void) {
    float x __attribute((annotate("scalar(range(-1, 1))"))) = 0.5;
    float y __attribute((annotate("scalar(range(-1, 1))"))) = 0;

    float output __attribute((annotate("target('output') scalar(range(-1, 1))"))) = 0.5*x + x*y - 2*x + foo();

    printf("%f", output);
}