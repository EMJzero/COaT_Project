#include <math.h>

#define M 100
#define len 100

/*float ex0(float x1, float x2)
{
  float t = (((3.0f * x1) * x1) + (2.0f * x2)) - x1;
  float t_42_ = (((3.0f * x1) * x1) - (2.0f * x2)) - x1;
  float d = (x1 * x1) + 1.0f;
  float s = t / d;
  float s_42_ = t_42_ / d;
  return x1 + (((((((((2.0f * x1) * s) * (s - 3.0f)) +
                    ((x1 * x1) * ((4.0f * s) - 6.0f))) *
                   d) +
                  (((3.0f * x1) * x1) * s)) +
                 ((x1 * x1) * x1)) +
                x1) +
               (3.0f * s_42_));
}*/

int test(float * arr, float * res)
{
  float __attribute__((annotate("target('test') scalar(range(0, 5) final)")))
  x1[len];
  float __attribute__((annotate("scalar(range(-5, 5) final)"))) x2[len];

  for (int i = 0; i < len; ++i) {
    x1[i] = arr[i * 2];
    x2[i] = arr[i * 2 + 1];
  }

  for (int i = 0; i < M; ++i) {
    for (int j = 0; j < len; ++j) {
      //res[j] = ex0(x1[j], x2[j]);

      float t = (((3.0f * x1[j]) * x1[j]) + (2.0f * x2[j])) - x1[j];
      float t_42_ = (((3.0f * x1[j]) * x1[j]) - (2.0f * x2[j])) - x1[j];
      float d = (x1[j] * x1[j]) + 1.0f;
      float s = t / d;
      float s_42_ = t_42_ / d;

      res[j] = x1[j] + (((((((((2.0f * x1[j]) * s) * (s - 3.0f)) +
                    ((x1[j] * x1[j]) * ((4.0f * s) - 6.0f))) *
                   d) +
                  (((3.0f * x1[j]) * x1[j]) * s)) +
                 ((x1[j] * x1[j]) * x1[j])) +
                x1[j]) +
               (3.0f * s_42_));
    }
  }
}

int main()
{
  float arr[len*2];
  float res[len];

  for(int i = 0; i < len*2; i++)
    arr[i] = i%16 + 0.23f;

  test(arr, res);
}