#include <stdio.h>

//#include <math.h>
#define M_PI 3.14159265
#define M_PI_2 1.57079632

int compare_float(double f1 __attribute((annotate("scalar(range(-1, 1))"))), double f2 __attribute((annotate("scalar(range(-1, 1))"))))
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

double cos(double x __attribute((annotate("scalar(range(0, 6.2831853))")))) __attribute((annotate("scalar(range(-1, 1))")))
{
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
        return ((-1) * (1.0f - (x * x / 2.0f) * (1.0f - (x * x / 12.0f) * (1.0f - (x * x / 30.0f) * (1.0f - (x * x / 56.0f) * (1.0f - (x * x / 90.0f) * (1.0f - (x * x / 132.0f) * (1.0f - (x * x / 182.0f)))))))));
    }
    return 1.0f - (x * x / 2.0f) * (1.0f - (x * x / 12.0f) * (1.0f - (x * x / 30.0f) * (1.0f - (x * x / 56.0f) * (1.0f - (x * x / 90.0f) * (1.0f - (x * x / 132.0f) * (1.0f - (x * x / 182.0f)))))));
}

double sin(double x __attribute((annotate("scalar(range(0, 6.2831853))")))) __attribute((annotate("scalar(range(-1, 1))")))
{
    return cos(x - M_PI_2);
}

int main()
{
    float res_cos __attribute((annotate("target('res_cos') scalar(range(-1, 1)) backtracking(true)"))) = cos(M_PI/6);
    float res_sin __attribute((annotate("target('res_sin') scalar(range(-1, 1)) backtracking(true)"))) = sin(M_PI/12);
    printf("Cos(Pi/6) = %f\nSin(Pi/12) = %f\n", res_cos, res_sin);
    
    return 0;
}