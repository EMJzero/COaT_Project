#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define M 1
#define len 100

float ex0(float x1, float x2)
{
  float __attribute__((annotate("scalar(range(-15, 85))"))) t = (((3.0f * x1) * x1) + (2.0f * x2)) - x1;
  float __attribute__((annotate("scalar(range(-15, 85))"))) t_42_ = (((3.0f * x1) * x1) - (2.0f * x2)) - x1;
  float __attribute__((annotate("scalar(range(1, 26))"))) d = (x1 * x1) + 1.0f;
  float __attribute__((annotate("scalar(range(-15, 85))"))) s = t / d;
  float __attribute__((annotate("scalar(range(-15, 85))"))) s_42_ = t_42_ / d;
  float __attribute__((annotate("target('result') scalar()"))) res = x1 + (((((((((2.0f * x1) * s) * (s - 3.0f)) +
                    ((x1 * x1) * ((4.0f * s) - 6.0f))) *
                   d) +
                  (((3.0f * x1) * x1) * s)) +
                 ((x1 * x1) * x1)) +
                x1) +
               (3.0f * s_42_));
  return res;
}

void test(float * arr, float * res_f)
{
  float __attribute__((annotate("target('test_x1') scalar(range(0, 5) final)"))) x1[len];
  float __attribute__((annotate("target('test_x2') scalar(range(-5, 5) final)"))) x2[len];
  float __attribute__((annotate("errtarget('res') scalar()"))) res[len];

  for (int i = 0; i < len; ++i) {
    x1[i] = arr[i * 2];
    x2[i] = arr[i * 2 + 1];
  }

  for (int i = 0; i < M; ++i) {
    for (int j = 0; j < len; ++j) {
      res[j] = ex0(x1[j], x2[j]);
    }
  }

  for (int i = 0; i < len; ++i) {
    res_f[i] = res[i];
  }
}

int main()
{
  float arr[len*2];
  float res[len];

  for(int i = 0; i < len*2; i+=2) {
    arr[i] = ((float)(i+2)*5)/(len*2);
    arr[i+1] = ((float)(i+2)*10)/(len*2) - 5;
  }

  test(arr, res);

  printf("Values Begin\n");
  for (int j = 0; j < len; ++j) {
    printf("In: (%.8f, %.8f) Out: %.8f\n", arr[j*2], arr[j*2 + 1], res[j]);
  }
  printf("Values End\n");
  
  return 0;
}