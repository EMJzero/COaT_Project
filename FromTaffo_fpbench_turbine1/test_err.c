#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define M 1
#define len 100

float ex0(float v, float w, float r)
{
  return ((3.0f + (2.0f / (r * r))) -
          (((0.125f * (3.0f - (2.0f * v))) * (((w * w) * r) * r)) / (1.0f - v))) -
         4.5f;
}

void test(float * arr, float * res_f)
{
  float __attribute__((annotate("target('main') scalar(range(-5, 0) final)"))) v[len];
  float __attribute__((annotate("scalar(range(0, 1) final)"))) w[len];
  float __attribute__((annotate("scalar(range(3.8, 7.8) final)"))) e[len];
  float __attribute__((annotate("errtarget('res') scalar()"))) res[len];

  for (int i = 0; i < len; ++i) {
    v[i] = arr[i * 3];
    w[i] = arr[i * 3 + 1];
    e[i] = arr[i * 3 + 2];
  }

  for (int i = 0; i < M; ++i) {
    for (int j = 0; j < len; ++j) {
      res[j] = ex0(v[j], w[j], e[j]);
    }
  }

  for (int i = 0; i < len; ++i) {
    res_f[i] = res[i];
  }
}

int main()
{
  float arr[len*3];
  float res[len];

  for(int i = 0; i < len*3; i+=3) {
    arr[i] = i%6 - 5;
    arr[i + 1] = i%2;
    arr[i + 2] = i%4 + 3.4;
  }

  test(arr, res);

  printf("Values Begin\n");
  for (int j = 0; j < len; ++j) {
    printf("%f\n", res[j]);
  }
  printf("Values End\n");
}