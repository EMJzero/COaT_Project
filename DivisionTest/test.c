#include <stdio.h>

#define len 1024

void test(float * arr, float * res_f)
{
  float __attribute__((annotate("target('numerator') scalar(range(-256, 256) final)"))) n[len];
  float __attribute__((annotate("target('denominator') scalar(range(-256, 256) final)"))) d[len];
  float __attribute__((annotate("errtarget('res') scalar()"))) res[len];

  for (int i = 0; i < len; ++i) {
    n[i] = arr[i * 2];
    d[i] = arr[i * 2 + 1];
  }

  for (int j = 0; j < len; ++j) {
    res[j] = n[j] / d[j];
  }

  for (int i = 0; i < len; ++i) {
    res_f[i] = res[i];
  }
}

int main()
{
  float arr[len * 2];
  float res[len];

  for(int i = 0; i < len*2; i++)
    arr[i] = i%32 + 0.23f;

  test(arr, res);
}