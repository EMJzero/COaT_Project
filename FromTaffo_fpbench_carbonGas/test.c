//#include <stdio.h>

#define M 1000
#define len 2000

/*float ex0(float __attribute__((annotate("target('v') scalar(range(0, 1))"))) v)
{
  const float p = 35000000.0f;
  const float a = 0.401f;
  const float b = 4.27e-05f;
  const float t = 300.0f;
  const float n = 1000.0f;
  const float k = 1.3806503e-23f;
  float pv = p * v;
  float __attribute__((annotate("scalar(range(401014, 3062257153))"))) ann =
      a * n * n / v;

  float pbb = p * b * b;

  float __attribute__((annotate("scalar(range(17123, 998543130625))")))
  annnbvv = a * n * n * n * b / v / v;
  float __attribute__((annotate("scalar(range(-995480895487, 35382589.0))")))
  ret = (pv + ann - pbb - annnbvv);
  return ret;
}*/

void test(float * arr, float * res)
{
  const float p = 35000000.0f;
  const float a = 0.401f;
  const float b = 4.27e-05f;
  const float t = 300.0f;
  const float n = 1000.0f;
  const float k = 1.3806503e-23f;

  float __attribute__((annotate("target('v') scalar(range(0, 1))"))) v[len];
  for (int i = 0; i < len; ++i) {
    v[i] = arr[i];
  }

  for (int i = 0; i < M; ++i) {
    for (int j = 0; j < len; ++j) {
      //res[j] = ex0(v[j]);

      float pv = p * v[j];
      float __attribute__((annotate("scalar(range(401014, 3062257153))"))) ann =
          a * n * n / v[j];

      float pbb = p * b * b;

      float __attribute__((annotate("scalar(range(17123, 998543130625))")))
      annnbvv = a * n * n * n * b / v[j] / v[j];
      float __attribute__((annotate("scalar(range(-995480895487, 35382589.0))")))
      ret = (pv + ann - pbb - annnbvv);
      res[j] = ann;
    }
  }
}

int main()
{
  float arr[len];
  float res[len];

  for(int i = 0; i < len; i++)
    arr[i] = i%32 + 0.23f;

  test(arr, res);
}