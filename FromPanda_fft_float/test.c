#include <stdio.h>
#include <math.h>

/*float myFabsf(float x __attribute((annotate("scalar()")))) __attribute((annotate("scalar()"))) {
      if (x < 0)
            return -x;
      return x;
}

float mySqrt(float x __attribute((annotate("scalar()")))) __attribute((annotate("scalar()"))) {
      float x0 = x / 2.0f;
      float x1 = (x0 + x / x0) / 2.0f;
      while (myFabsf(x1 - x0) >= 0.0001f)
      {
            x0 = x1;
            x1 = (x0 + x / x0) / 2.0f;
      }
      return x1;
}*/

float mySqrt(float n __attribute((annotate("scalar()")))) __attribute((annotate("scalar()"), always_inline)) {
//float mySqrt(float n) __attribute((always_inline)) {
  float lo = n < 1 ? n : 1;
  float hi = n > 1 ? n : 1;
  float mid;

  while(100 * lo * lo < n) lo *= 10;
  while(0.01 * hi * hi > n) hi *= 0.1;

  for(int i = 0 ; i < 100 ; i++) {
      mid = (lo+hi)/2;
      if(mid*mid == n) return mid;
      if(mid*mid > n) hi = mid;
      else lo = mid;
  }

  return mid;
}

/*
      This computes an in-place complex-to-complex FFT
       x and y are the real and imaginary arrays of 2^m points.
      dir =  1 gives forward transform
      dir = -1 gives reverse transform
      Code from http://paulbourke.net/miscellaneous/dft/
      by Paul Bourke June 1993
*/
short FFT(short int dir, long m, float *x __attribute((annotate("scalar()"))), float *y __attribute((annotate("scalar()")))) __attribute__((always_inline)) {
      long n, i, i1, j, k, i2, l, l1, l2;
      float c1, c2, tx, ty, t1, t2, u1, u2, z;
      /*float c1 __attribute((annotate("scalar()"))),
          c2 __attribute((annotate("scalar()"))),
          tx __attribute((annotate("scalar()"))),
          ty __attribute((annotate("scalar()"))),
          t1 __attribute((annotate("scalar()"))),
          t2 __attribute((annotate("scalar()"))),
          u1 __attribute((annotate("scalar()"))),
          u2 __attribute((annotate("scalar()"))),
          z __attribute((annotate("scalar()")));*/

      /* Calculate the number of points */
      n = 1;
      for (i = 0; i < m; i++)
            n *= 2;

      /* Do the bit reversal */
      i2 = n >> 1;
      j = 0;
      for (i = 0; i < n - 1; i++)
      {
            if (i < j)
            {
                  tx = x[i];
                  ty = y[i];
                  x[i] = x[j];
                  y[i] = y[j];
                  x[j] = tx;
                  y[j] = ty;
            }
            k = i2;
            while (k <= j)
            {
                  j -= k;
                  k >>= 1;
            }
            j += k;
      }

      /* Compute the FFT */
      c1 = -1.0;
      c2 = 0.0;
      l2 = 1;
      for (l = 0; l < m; l++)
      {
            l1 = l2;
            l2 <<= 1;
            u1 = 1.0;
            u2 = 0.0;
            for (j = 0; j < l1; j++)
            {
                  for (i = j; i < n; i += l2)
                  {
                        i1 = i + l1;
                        t1 = u1 * x[i1] - u2 * y[i1];
                        t2 = u1 * y[i1] + u2 * x[i1];
                        x[i1] = x[i] - t1;
                        y[i1] = y[i] - t2;
                        x[i] += t1;
                        y[i] += t2;
                  }
                  z = u1 * c1 - u2 * c2;
                  u2 = u1 * c2 + u2 * c1;
                  u1 = z;
            }
            c2 = mySqrt((1.0 - c1) / 2.0);
            if (dir == 1)
                  c2 = -c2;
            c1 = mySqrt((1.0 + c1) / 2.0);
      }

      /* Scaling for forward transform */
      if (dir == 1)
      {
            for (i = 0; i < n; i++)
            {
                  x[i] /= n;
                  y[i] /= n;
            }
      }

      return 0;
}

/*
 * Here is an example program which computes the FFT of a short pulse in a sample of length 128.
 * To make the resulting fourier transform real the pulse is defined for equal positive and
 * negative times (-10 ... 10), where the negative times wrap around the end of the array.
 * The transformed data is rescaled by 1/\sqrt N so that it fits on the same plot as the input.
 * Only the real part is shown, by the choice of the input data the imaginary part is zero.
 * Allowing for the wrap-around of negative times at t=128, and working in units of k/N,
 * the DFT approximates the continuum fourier transform, giving a modulated \sin function.
 */

int main(void) {
      int i;
      float x[128] __attribute((annotate("target('input_signal') scalar(range(-1, 1))")));
      float y[128] __attribute((annotate("target('output_signal') scalar(range(-1, 1))")));

      for (i = 0; i < 128; i++)
      {
            x[i] = 0.0;
            y[i] = 0.0;
      }

      x[0] = 1.0;

      for (i = 1; i <= 10; i++)
      {
            x[i] = x[128 - i] = 1.0;
      }

      for (i = 0; i < 128; i++)
      {
            printf("%d %e %e\n", i,
                   x[i], y[i]);
      }
      printf("\n");

      i = FFT(1, 7, x, y);
      for (i = 0; i < 128; i++)
      {
            printf("%d %e %e\n", i,
                   x[i] / mySqrt(128),
                   y[i] / mySqrt(128));
      }

      return 0;
}