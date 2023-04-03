#include <stdio.h>

float foo() {
    return 0.2;
}

int main(void) {
    float x __attribute((annotate("target('input_signal') scalar(range(-1, 1))"))) = 0.5;
    float y __attribute((annotate("target('input_signal') scalar(range(-1, 1))"))) = 0;

    float output = 0.5*x + x*y - 2*x + foo();

    printf("%f", output);
}