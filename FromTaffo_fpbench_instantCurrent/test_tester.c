#include <stdio.h>
#include <math.h>

#define M 1
#define len 9

#define pi 3.14159265359f

float ex0(float t, float resistance, float frequency, float inductance, float maxVoltage)
{
  float __attribute__((annotate("scalar(range(-10, 50))"))) impedance_re = resistance;
  float __attribute__((annotate("scalar(range(-1400, 1400))"))) impedance_im = ((2.0f * pi) * frequency) * inductance;
  float __attribute__((annotate("scalar(range(0, 1962500))"))) denom = (impedance_re * impedance_re) + (impedance_im * impedance_im);
  float __attribute__((annotate("scalar(range(-120, 600))"))) re_tmp = (maxVoltage * impedance_re);
  float __attribute__((annotate("scalar(range(-16800, 16800))"))) im_tmp = (maxVoltage * impedance_im);
  im_tmp = -im_tmp;

  float __attribute__((annotate("scalar(range(-10, 10) final disabled)"))) current_re = re_tmp / denom;
  float __attribute__((annotate("scalar(range(-10, 10) final disabled)"))) current_im = im_tmp / denom;
  float __attribute__((annotate("scalar(range(-1, 11))"))) maxCurrent = sqrt(((current_re * current_re) + (current_im * current_im)));

  float __attribute__((annotate("scalar(disabled)"))) atan_arg = current_im / current_re;
  float __attribute__((annotate("scalar(range(-0.8, 0.8))"))) theta = atan(atan_arg);
  float __attribute__((annotate("scalar(range(6, 7))"))) cos_1 = (2.0f * pi);
  float __attribute__((annotate("scalar(range(-70, 700))"))) cos_2 = (cos_1 * frequency);
  float __attribute__((annotate("scalar(range(-210000, 210000) final)"))) cos_3 = (cos_2 * t);

  // The original ranges needed to be altered to prevent "i96"s in the IR...
  float __attribute__((annotate("scalar(range(-210000, 210000) final)"))) cos_4 = cos_3;
  float __attribute__((annotate("scalar(range(-1, 1) final)"))) cos_5 = cos(cos_4);
  float __attribute__((annotate("scalar(range(-2048, 2048))"))) mmaxCurrent = maxCurrent;
  float __attribute__((annotate("target('result') scalar(range(-2048, 2048))"))) tmp = mmaxCurrent * cos_5;
  printf("t = %lf\n", t);
  printf("resistance = %lf\n", resistance);
  printf("frequency = %lf\n", frequency);
  printf("inductance = %lf\n", inductance);
  printf("maxVoltage = %lf\n", maxVoltage);
  printf("impedance_im = %lf\n", impedance_im);
  printf("denom = %lf\n", denom);
  printf("re_tmp = %lf\n", re_tmp);
  printf("im_tmp = %lf\n", im_tmp);
  printf("current_re = %lf\n", current_re);
  printf("current_im = %lf\n", current_im);
  printf("maxCurrent = %lf\n", maxCurrent);
  printf("atan_arg = %lf\n", atan_arg);
  printf("theta = %lf\n", theta);
  printf("cos_2 = %lf\n", cos_2);
  printf("cos_3 = %lf\n", cos_3);
  printf("cos_5 = %lf\n", cos_5);
  printf("tmp = %lf\n\n", tmp);
  return tmp;
}

void test(float * arr, float * res)
{
  float __attribute__((annotate("target('t') scalar(range(-2, 300) final)"))) t[len];
  float __attribute__((annotate("target('resistence') scalar(range(-10, 50) final)"))) resistance[len];
  float __attribute__((annotate("target('frequency') scalar(range(-10, 100) final)"))) frequency[len];
  float __attribute__((annotate("target('inductance') scalar(range(-2, 2) final)"))) inductance[len];
  float __attribute__((annotate("target('maxVoltage') scalar(range(-2, 12) final)"))) maxVoltage[len];

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

  int i = 0;
  arr[i] = 270.67;
  arr[i + 1] = 24.585;
  arr[i + 2] = 29.916;
  arr[i + 3] = -0.449;
  arr[i + 4] = 2.9591;
  
  i = 1*5;
  arr[i] = 204.75;
  arr[i + 1] = 20.514;
  arr[i + 2] = 2.2229;
  arr[i + 3] = -0.467;
  arr[i + 4] = 11.238;
  
  i = 2*5;
  arr[i] = 133.95;
  arr[i + 1] = -0.17;
  arr[i + 2] = 19.949;
  arr[i + 3] = -0.353;
  arr[i + 4] = 11.69;
  
  i = 3*5;
  arr[i] = 107.68;
  arr[i + 1] = 19.12;
  arr[i + 2] = -3.391;
  arr[i + 3] = -0.237;
  arr[i + 4] = 4.3512;

  i = 4*5;
  arr[i] = 95.175;
  arr[i + 1] = 42.694;
  arr[i + 2] = 40.37;
  arr[i + 3] = -0.058;
  arr[i + 4] = 11.612;
  
  i = 5*5;
  arr[i] = 87.625;
  arr[i + 1] = 16.185;
  arr[i + 2] = 85.957;
  arr[i + 3] = -0.861;
  arr[i + 4] = 6.8365;
  
  i = 6*5;
  arr[i] = 119.47;
  arr[i + 1] = 13.311;
  arr[i + 2] = 14.047;
  arr[i + 3] = 0.5532;
  arr[i + 4] = 2.2135;
  
  i = 7*5;
  arr[i] = 111.93;
  arr[i + 1] = -5.627;
  arr[i + 2] = 79.042;
  arr[i + 3] = -0.182;
  arr[i + 4] = 8.0647;
  
  i = 8*5;
  arr[i] = 1.2502;
  arr[i + 1] = 11.968;
  arr[i + 2] = 72.042;
  arr[i + 3] = -1.697;
  arr[i + 4] = 11.931;
  
  test(arr, res);

  printf("Values Begin\n");
  for (int j = 0; j < len; ++j) {
    printf("%f\n", res[j]);
  }
  printf("Values End\n");
  
  return 0;
}