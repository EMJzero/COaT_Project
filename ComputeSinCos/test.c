#include <stdio.h>

//#include <math.h>
#define M_PI 3.14159265
#define M_PI_2 1.57079632

int compare_double(double f1 __attribute((annotate("scalar(range(-1, 1))"))), double f2 __attribute((annotate("scalar(range(-1, 1))"))))
{
    //double precision = 0.00000000000000000001;
    double precision __attribute((annotate("scalar(range(0, 1))"))) = 0.00000001;
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

void manual_cos(double * x_f, double * res)
{
    double x __attribute((annotate("scalar(range(0, 6.2831853)) target('x')")));
    x = *x_f;

    if (x < 0.0f)
        x = -x;

    if (0 <= compare_double(x, M_PI_2))
    {
        do
        {
            x -= M_PI_2;
        } while (0 <= compare_double(x, M_PI_2));
    }

    if ((0 <= compare_double(x, M_PI)) && (-1 == compare_double(x, M_PI_2)))
    {
        x -= M_PI;
        *res = ((-1) * (1.0f - (x * x / 2.0f) * (1.0f - (x * x / 12.0f) * (1.0f - (x * x / 30.0f) * (1.0f - (x * x / 56.0f) * (1.0f - (x * x / 90.0f) * (1.0f - (x * x / 132.0f) * (1.0f - (x * x / 182.0f)))))))));
        return;
    }
    *res = 1.0f - (x * x / 2.0f) * (1.0f - (x * x / 12.0f) * (1.0f - (x * x / 30.0f) * (1.0f - (x * x / 56.0f) * (1.0f - (x * x / 90.0f) * (1.0f - (x * x / 132.0f) * (1.0f - (x * x / 182.0f)))))));
    return;
}

void manual_sin(double * x_f, double * res)
{
    *x_f = *x_f - M_PI_2;
    return manual_cos(x_f, res);
}

int main()
{
    double in_x = M_PI/6;

    double res_cos;
    double res_sin;
    manual_cos(&in_x, &res_cos);
    manual_sin(&in_x, &res_sin);
    printf("Cos(Pi/6) = %f\nSin(Pi/6) = %f\n", res_cos, res_sin);
    
    return 0;
}