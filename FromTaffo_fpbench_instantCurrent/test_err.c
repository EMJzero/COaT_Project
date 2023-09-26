#include <stdio.h>
#include <math.h>

#define M 1
#define len 100

#ifndef M_PI
#define M_PI 3.1415926535897931
#endif

float ex0(float t, float resistance, float frequency, float inductance, float maxVoltage)
{
  float __attribute__((annotate("scalar(range(-10, 50))"))) impedance_re = resistance;
  float __attribute__((annotate("scalar(range(-1400, 1400))"))) impedance_im = ((2.0f * M_PI) * frequency) * inductance;
  float __attribute__((annotate("scalar(range(0, 1962500))"))) denom = (impedance_re * impedance_re) + (impedance_im * impedance_im);
  float __attribute__((annotate("scalar(range(-120, 600))"))) re_tmp = (maxVoltage * impedance_re);
  float __attribute__((annotate("scalar(range(-16800, 16800))"))) im_tmp = (maxVoltage * impedance_im);
  im_tmp = -im_tmp;

  float __attribute__((annotate("scalar(range(-10, 10) final disabled)"))) current_re = re_tmp / denom;
  float __attribute__((annotate("scalar(range(-10, 10) final disabled)"))) current_im = im_tmp / denom;
  float __attribute__((annotate("scalar(range(-1, 11))"))) maxCurrent = sqrt(((current_re * current_re) + (current_im * current_im)));

  float __attribute__((annotate("scalar(disabled)"))) atan_arg = current_im / current_re;
  float __attribute__((annotate("scalar(range(-0.8, 0.8))"))) theta = atan(atan_arg);
  float __attribute__((annotate("scalar(range(6, 7))"))) cos_1 = (2.0f * M_PI);
  float __attribute__((annotate("scalar(range(-70, 700))"))) cos_2 = (cos_1 * frequency);
  float __attribute__((annotate("scalar(range(-210000, 210000) final)"))) cos_3 = (cos_2 * t);

  // The original ranges needed to be altered to prevent "i96"s in the IR...
  float __attribute__((annotate("scalar(range(-210000, 210000) final)"))) cos_4 = cos_3;
  float __attribute__((annotate("scalar(range(-1, 1) final)"))) cos_5 = cos(cos_4);
  float __attribute__((annotate("scalar(range(-2048, 2048))"))) mmaxCurrent = maxCurrent;
  float __attribute__((annotate("target('result') scalar(range(-2048, 2048))"))) tmp = mmaxCurrent * cos_5;
  return tmp;
}

void test(float * arr, float * res_f)
{
  float __attribute__((annotate("target('t') scalar(range(-2, 300) final)"))) t[len];
  float __attribute__((annotate("target('resistence') scalar(range(-10, 50) final)"))) resistance[len];
  float __attribute__((annotate("target('frequency') scalar(range(-10, 100) final)"))) frequency[len];
  float __attribute__((annotate("target('inductance') scalar(range(-2, 2) final)"))) inductance[len];
  float __attribute__((annotate("target('maxVoltage') scalar(range(-2, 12) final)"))) maxVoltage[len];
  float __attribute__((annotate("errtarget('res') scalar()"))) res[len];

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

  for (int i = 0; i < len; ++i) {
    res_f[i] = res[i];
  }
}

int main()
{
  float arr[len*5];
  float res[len];

  for(int i = 0; i < len*5; i+=5)
  {
    arr[i] = i%300 - 0.56f;
    arr[i + 1] = i%56 - 5.23f;
    arr[i + 2] = i%107 - 6.93f;
    arr[i + 3] = i%4 - 1.47f;
    arr[i + 4] = i%14 - 1.75f;
  }

  test(arr, res);

  printf("Values Begin\n");
  for (int j = 0; j < len; ++j) {
    printf("%f\n", res[j]);
  }
  printf("Values End\n");
  
  return 0;
}