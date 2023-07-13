#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define M_PI 3.14159265
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
}

#define M 1000
#define len 200
#define pi 3.14159265359

// Uncommenting this breaks PandA. The reason is math.h's cos function's presence for some reason...
/*float ex0(float radius, float theta) __attribute__((annotate("scalar(range(-100, 100))")))
{
  float __attribute__((annotate("scalar(range(-10, 10) type(64 54))"))) radiant = theta * (pi / 180.0f);
  float __attribute__((annotate("scalar(range(-100, 100))"))) c = sin(radiant);
  float __attribute__((annotate("scalar(range(-100, 100))"))) tmp = radius * c;
  return tmp;
}*/

int test(float * arr)
{
  float __attribute__((annotate("target('main') scalar(range(1, 10))"))) radius[len];
  float __attribute__((annotate("scalar(range(0, 360))"))) theta[len];
  float __attribute__((annotate("scalar(range(-100, 100))"))) res[len];

  float __attribute__((annotate("scalar(range(-10, 10) type(64 54))"))) radiant;
  float __attribute__((annotate("scalar(range(-100, 100))"))) c;

  for (int i = 0; i < len; ++i) {
    radius[i] = arr[i * 2];
    theta[i] = arr[i * 2 + 1];
  }

  for (int i = 0; i < M; ++i) {
    for (int j = 0; j < len; ++j) {
      //res[j] = ex0(radius[j], theta[j]);

      radiant = theta[j] * (pi / 180.0f);
      // Uncomment this and cos breaks PandA...
      //c = sin(radiant);
      manual_sin(&radiant, &c);
      res[j] = radius[j] * c;
    }
  }

  printf("Values Begin\n");
  for (int j = 0; j < len; ++j) {
    printf("%f\n", res[j]);
  }
  printf("Values End\n");
  return 0;
}

int main()
{
  float arr[len];

  for(int i = 0; i < len; i++)
    arr[i] = i%32 + 0.23f;

  test(arr);
}