#include "complex.hpp"

#include <cmath>

// Those Sin and Cos come from the test "ComputeSinCos"!

/*#define M_PI 3.14159265
#define M_PI_2 1.57079632

int compare_float(float f1 __attribute((annotate("scalar(range(-1, 1))"))), float f2 __attribute((annotate("scalar(range(-1, 1))"))))
{
    //float precision = 0.00000000000000000001;
    float precision __attribute((annotate("scalar(range(0, 1))"))) = 0.00000001;
    if ((f1 - precision) < f2)
    {
        return -1;
    }
    else if ((f1 + precision) > f2)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}

void manual_cos(float * x_f, float * res)
{
    float x __attribute((annotate("scalar(range(0, 6.2831853)) target('x')")));
    x = *x_f;

    if (x < 0.0f)
        x = -x;

    if (0 <= compare_float(x, M_PI_2))
    {
        do
        {
            x -= M_PI_2;
        } while (0 <= compare_float(x, M_PI_2));
    }

    if ((0 <= compare_float(x, M_PI)) && (-1 == compare_float(x, M_PI_2)))
    {
        x -= M_PI;
        *res = ((-1) * (1.0f - (x * x / 2.0f) * (1.0f - (x * x / 12.0f) * (1.0f - (x * x / 30.0f) * (1.0f - (x * x / 56.0f) * (1.0f - (x * x / 90.0f) * (1.0f - (x * x / 132.0f) * (1.0f - (x * x / 182.0f)))))))));
        return;
    }
    *res = 1.0f - (x * x / 2.0f) * (1.0f - (x * x / 12.0f) * (1.0f - (x * x / 30.0f) * (1.0f - (x * x / 56.0f) * (1.0f - (x * x / 90.0f) * (1.0f - (x * x / 132.0f) * (1.0f - (x * x / 182.0f)))))));
    return;
}

void manual_sin(float * x_f, float * res)
{
    *x_f = *x_f - M_PI_2;
    return manual_cos(x_f, res);
}*/

void fftSinCos(float __attribute((annotate("scalar()"))) x,
	       float* __attribute((annotate("scalar()"))) s,
	       float* __attribute((annotate("scalar()"))) c) {
    *s = sin(-2 * PI * x);
    *c = cos(-2 * PI * x);
}

#if 0
float abs(const Complex* x) {
	return sqrt(x->real * x->real + x->imag * x->imag);
}

float arg(const Complex* x) {
	if (x->real > 0)
		return atan(x->imag / x->real);

	if (x->real < 0 && x->imag >= 0)
		return atan(x->imag / x->real) + PI;

	if (x->real < 0 && x->imag < 0)
		return atan(x->imag / x->real) - PI;

	if (x->real == 0 && x->imag > 0)
		return PI / 2;

	if (x->real == 0 && x->imag < 0)
		return -PI / 2;

	if (x->real == 0 && x->imag == 0)
		return 0;

	return 0;
}
#endif
