#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#define M 1
#define len 100

float ex0(float a, float b, float c) {
  float s = ((a + b) + c) / 2.0;
  return sqrt((((s * (s - a)) * (s - b)) * (s - c)));
}

void test(float * arr)
{
  float __attribute__((annotate("target('test') scalar(range(-9, 9) final)")))
  a[len];
  float __attribute__((annotate("scalar(range(-9, 9) final)"))) b[len];
  float __attribute__((annotate("scalar(range(-9, 9) final)"))) c[len];

  float res[len];

  for (int i = 0; i < len; ++i) {
    a[i] = arr[i * 3];
    b[i] = arr[i * 3 + 1];
    c[i] = arr[i * 3 + 2];
  }

  for (int i = 0; i < M; ++i) {
    for (int j = 0; j < len; ++j) {
      res[j] = ex0(a[j], b[j], c[j]);
    }
  }

  printf("Values Begin\n");
  for (int j = 0; j < len; ++j) {
    printf("%f\n", res[j]);
  }
  printf("Values End\n");
}

int main()
{
  float arr[len*2];

  for(int i = 0; i < len*2; i++)
    arr[i] = i%19 - 9;

  test(arr);
}