#include "fourier.hpp"
#include <cmath>
#include <fstream>
#include <map>

#define K 1024

// Shall we let TAFFO optimize this too?
float manual_log2(float x)
{
    if (x <= 0.0f) {
        return 0.0f;
    }

    int exponent = 0;
    while (x >= 2.0f) {
        x /= 2.0f;
        exponent++;
    }

    float log2_mantissa = 0.0f;
    float fraction = x - 1.0f;
    float power_of_two = 0.5f;
    for (int i = 0; i < 23; i++) {
        if (fraction >= power_of_two) {
            log2_mantissa += power_of_two;
            fraction -= power_of_two;
        }
        power_of_two *= 0.5f;
    }

    float logarithm = static_cast<float>(exponent) + log2_mantissa;

    return logarithm;
}

void calcFftIndices(int* indices)
{
	int i, j;
	int N;

	N = (int)manual_log2(K) ;

	indices[0] = 0 ;
	indices[1 << 0] = 1 << (N - (0 + 1)) ;
	for (i = 1; i < N; ++i)
	{
		for(j = (1 << i) ; j < (1 << (i + 1)); ++j)
		{
			indices[j] = indices[j - (1 << i)] + (1 << (N - (i + 1))) ;
		}
	}
}

// TARGET THIS AS THE TOP FUNCTION FOR PandA-Bambu!
void radix2DitCooleyTykeyFftWrapper(int* indices, float * x_real, float * x_imag, float * f_real, float * f_imag)
{
	Complex x[K] __attribute((annotate("target('x') " ANNOTATION_COMPLEX(,))));
	Complex f[K] __attribute((annotate("target('f') " ANNOTATION_COMPLEX(,))));

	for(int i = 0; i < K; i++)
	{
		x[i].real = x_real[i];
		x[i].imag = x_imag[i];
	}

	radix2DitCooleyTykeyFft(indices, x, f);

	for(int i = 0; i < K; i++)
	{
		f_real[i] = f[i].real;
		f_imag[i] = f[i].imag;
	}
}


void radix2DitCooleyTykeyFft(int* indices __attribute((annotate(ANNOTATION_RANGE_N))),
			     Complex* x __attribute((annotate("errtarget('x') " ANNOTATION_COMPLEX(,)))),
			     Complex* f __attribute((annotate("errtarget('f') " ANNOTATION_COMPLEX(,)))))
{
  /* This FFT implementation is buggy
   * x[0] should be < x[all i != 0] because the input is all positive, except it isn't
   * The actual maximum value is the integration of all values times 4 for some reason */
	calcFftIndices(indices) ;

	int step ;
	float __attribute((annotate("scalar()"))) arg ;
	int eI ;
	int oI ;

	float __attribute((annotate("scalar()"))) fftSin ;
	float __attribute((annotate("scalar()"))) fftCos ;

	Complex __attribute((annotate(ANNOTATION_COMPLEX_RANGE))) t;
	int i ;
	int N ;
	int j ;
	int __attribute((annotate(ANNOTATION_RANGE_N))) k ;

/*
	double dataIn[1];
	double dataOut[2];
*/
	for(i = 0, N = 1 << (i + 1); N <= K ; i++, N = 1 << (i + 1))
	{
		for(j = 0 ; j < K ; j += N)
		{
			step = N >> 1 ;
			for(k = 0; k < step ; k++)
			{
				arg = (float)k / N ;
				eI = j + k ;
				oI = j + step + k ;
/*
				dataIn[0] = arg;

#pragma parrot(input, "fft", [1]dataIn)
*/
				fftSinCos(arg, &fftSin, &fftCos);
/*
				dataOut[0] = fftSin;
				dataOut[1] = fftCos;

#pragma parrot(output, "fft", [2]<0.0; 2.0>dataOut)

				fftSin = dataOut[0];
				fftCos = dataOut[1];
*/
				// Non-approximate
				t =  x[indices[eI]] ;
				x[indices[eI]].real = t.real + (x[indices[oI]].real * fftCos - x[indices[eI]].imag * fftSin);
				x[indices[eI]].imag = t.imag + (x[indices[eI]].imag * fftCos + x[indices[oI]].real * fftSin);

				x[indices[oI]].real = t.real - (x[indices[oI]].real * fftCos - x[indices[eI]].imag * fftSin);
				x[indices[oI]].imag = t.imag - (x[indices[eI]].imag * fftCos + x[indices[oI]].real * fftSin);
			}
		}
	}

	for (int i = 0; i < K; i++)
	{
		f[i] = x[indices[i]] ;
	}
}
