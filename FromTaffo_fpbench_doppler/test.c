#include <stdio.h>

#define M 100
#define len 100

float ex0(float u, float v, float T)
{
  float __attribute__((annotate(" target('x0') scalar()"))) t1 = 331.4f + (0.6f * T);
  return (-t1 * v) / ((t1 + u) * (t1 + u));
}

void test(float * arr, float * res)
{
  float __attribute__((annotate("target('main') scalar(range(-500, 500) final)"))) u[len];
  float __attribute__((annotate("scalar(range(-20, 20000) final)"))) v[len];
  float __attribute__((annotate("scalar(range(-50, 50) final)"))) T[len];

  for (int i = 0; i < len; ++i) {
    u[i] = arr[i * 3];
    v[i] = arr[i * 3 + 1];
    T[i] = arr[i * 3 + 2];
  }

  for (int i = 0; i < M; ++i) {
    for (int j = 0; j < len; ++j) {
      res[j] = ex0(u[j], v[j], T[j]);
    }
  }
}

int main()
{
  float arr[len*3];
  float res[len*3];

  for(int i = 0; i < len*3; i++)
    arr[i] = i%32 + 0.23f;

  test(arr, res);
}