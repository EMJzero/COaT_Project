#include <math.h>

#define M 100
#define len 100

float ex0(float t, float resistance, float frequency, float inductance,
          float maxVoltage)
{
  float pi = 3.14159265359f;
  float impedance_re = resistance;
  float __attribute__((annotate("scalar(range(-1, 4) final)"))) impedance_im = ((2.0f * pi) * frequency) * inductance;
  float __attribute__((annotate("scalar(range(-1, 2503) final)"))) denom = (impedance_re * impedance_re) + (impedance_im * impedance_im);
  float re_tmp = (maxVoltage * impedance_re) ;
  float im_tmp = (maxVoltage * impedance_im) ;
   im_tmp = -im_tmp;

  float  current_re = re_tmp / denom;
  float  current_im = im_tmp / denom;
  float __attribute__((annotate("scalar(range(-1, 11) final)"))) maxCurrent =
      sqrt(((current_re * current_re) + (current_im * current_im)));


  float __attribute__((annotate("scalar(range(-1, 4) final)"))) theta = atan((current_im / current_re));
  float cos_1 = (2.0f * pi);
  float cos_2 = (cos_1 * frequency);
  float cos_3 = (cos_2 * t);

  // The original ranges needed to be removed to prevent "i96"s in the IR...
  float __attribute__((annotate("scalar()"))) cos_4 = cos_3 ;
  float __attribute__((annotate("scalar()"))) cos_5 = cos(cos_4);
  float __attribute__((annotate("scalar()"))) mmaxCurrent = maxCurrent;
  float __attribute__((annotate("scalar()"))) tmp = mmaxCurrent * cos_5;
  return tmp;
}

int test(float * arr, float * res)
{
  float __attribute__((annotate("target('test') scalar(range(-2, 300) final)")))
  t[len];
  float __attribute__((annotate("scalar(range(-10, 50) final)"))) resistance[len];
  float __attribute__((annotate("scalar(range(-10, 100) final)"))) frequency[len];
  float __attribute__((annotate("scalar(range(-2, 2) final)")))
  inductance[len];
  float __attribute__((annotate("scalar(range(-2, 12) final)"))) maxVoltage[len];

  for (int i = 0; i < len; ++i) {

    t[i] = arr[i * 5];
    resistance[i] = arr[i * 5 + 1];
    frequency[i] = arr[i * 5 + 2];
    inductance[i] = arr[i * 5 + 3];
    maxVoltage[i] = arr[i * 5 + 4];
  }

  for (int i = 0; i < M; ++i) {
    for (int j = 0; j < len; ++j) {
      res[j] = ex0(t[j], resistance[j], frequency[j], inductance[j], maxVoltage[j]);
   } 
  }
}

int main()
{
  float arr[len*5];
  float res[len];

  for(int i = 0; i < len*5; i++)
    arr[i] = i%32 + 0.23f;

  test(arr, res);
}