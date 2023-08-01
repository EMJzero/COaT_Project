#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define ANNOTATION_RANGE_N "scalar(range(1,4194304) final disabled)"
#define ANNOTATION_COMPLEX(R1,R2) "struct[scalar(" R1 "),scalar(" R2 ")]"
#define ANNOTATION_COMPLEX_RANGE ANNOTATION_COMPLEX("range(-10000, 10000) final", "range(-10000, 10000) final")

#define PI 3.1415926535897931

#define K 16//1024

typedef struct {
   float real;
   float imag;
} Complex;

static int* indices;
static float * x_real;
static float * x_imag;
static float * f_real;
static float * f_imag;
static FILE * output;

void fftSinCos(float __attribute((annotate("scalar(range(0, 1) final)"))) x,
	       float* __attribute((annotate("scalar(range(-1, 1) final)"))) s,
	       float* __attribute((annotate("scalar(range(-1, 1) final)"))) c) {
    *s = sin(-2 * PI * x);
    *c = cos(-2 * PI * x);
}

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

    float logarithm = (float)(exponent) + log2_mantissa;

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

void radix2DitCooleyTykeyFft(int* indices __attribute((annotate(ANNOTATION_RANGE_N))),
			     Complex* x __attribute((annotate("target('x') errtarget('x') " ANNOTATION_COMPLEX(,)))),
			     Complex* f __attribute((annotate("target('f') errtarget('f') " ANNOTATION_COMPLEX(,)))))
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

	for(i = 0, N = 1 << (i + 1); N <= K ; i++, N = 1 << (i + 1))
	{
		fprintf(output, "FFT: %d: %.4f+i*%.4f\n", i, x[i].real, x[i].imag);
		for(j = 0 ; j < K ; j += N)
		{
			step = N >> 1 ;
			for(k = 0; k < step ; k++)
			{
				arg = (float)k / N ;
				eI = j + k ;
				oI = j + step + k ;

				fftSinCos(arg, &fftSin, &fftCos);

				// Non-approximate
				for(int i = 0; i < K; i++)
				{
					fprintf(output, "Fuck it: %d: %.4f+i*%.4f\n", i, x[i].real, x[i].imag);
				}

				//t =  x[indices[eI]] ;
				// Ok, this fixed some of the issues...
				t.real =  x[indices[eI]].real;
				t.imag =  x[indices[eI]].imag;

				fprintf(output, "Operands %d: %.4f, %.4f, %.4f, %.4f, %.4f\n", indices[eI], t.real, x[indices[oI]].real, fftCos, x[indices[eI]].imag, fftSin);
				float tmp1 = x[indices[oI]].real * fftCos;
				float tmp2 = x[indices[eI]].imag * fftSin;
				fprintf(output, "Double check %d: %.4f, %.4f\n", indices[eI], tmp1, tmp2);
				//x[indices[eI]].real = t.real + (x[indices[oI]].real * fftCos - x[indices[eI]].imag * fftSin);
				x[indices[eI]].real = t.real + tmp1 - tmp2;
				tmp1 = x[indices[eI]].imag * fftCos;
				tmp2 = x[indices[oI]].real * fftSin;
				fprintf(output, "Double check %d: %.4f, %.4f\n", indices[eI], tmp1, tmp2);
				//x[indices[eI]].imag = t.imag + (x[indices[eI]].imag * fftCos + x[indices[oI]].real * fftSin);
				x[indices[eI]].imag = t.imag + tmp1 + tmp2;
				fprintf(output, "Transformation: %d: %.4f+i*%.4f\n", indices[eI], x[indices[eI]].real, x[indices[eI]].imag);
			
				fprintf(output, "Operands %d: %.4f, %.4f, %.4f, %.4f, %.4f\n", indices[oI], t.real, x[indices[oI]].real, fftCos, x[indices[eI]].imag, fftSin);
				tmp1 = x[indices[oI]].real * fftCos;
				tmp2 = x[indices[eI]].imag * fftSin;
				fprintf(output, "Double check %d: %.4f, %.4f\n", indices[eI], tmp1, tmp2);
				//x[indices[oI]].real = t.real - (x[indices[oI]].real * fftCos - x[indices[eI]].imag * fftSin);
				x[indices[oI]].real = t.real - tmp1 + tmp2;
				tmp1 = x[indices[eI]].imag * fftCos;
				tmp2 = x[indices[oI]].real * fftSin;
				fprintf(output, "Double check %d: %.4f, %.4f\n", indices[eI], tmp1, tmp2);
				//x[indices[oI]].imag = t.imag - (x[indices[eI]].imag * fftCos + x[indices[oI]].real * fftSin);
				x[indices[oI]].imag = t.imag - tmp1 - tmp2;
				fprintf(output, "Transformation: %d: %.4f+i*%.4f\n", indices[oI], x[indices[oI]].real, x[indices[oI]].imag);
			}
		}
	}

	for (int i = 0; i < K; i++)
	{
		f[i] = x[indices[i]] ;
	}
}

// TARGET THIS AS THE TOP FUNCTION FOR PandA-Bambu!
void radix2DitCooleyTykeyFftWrapper(int* indices, float * x_real, float * x_imag, float * f_real, float * f_imag)
{
	Complex x[K] __attribute((annotate("target('x_w') " ANNOTATION_COMPLEX(,))));
	Complex f[K] __attribute((annotate("target('f_w') " ANNOTATION_COMPLEX(,))));

	for(int i = 0; i < K; i++)
	{
		x[i].real = x_real[i];
		x[i].imag = x_imag[i];
		fprintf(output, "Wrapper: %d: %.4f+i*%.4f\n", i, x[i].real, x[i].imag);
	}

	radix2DitCooleyTykeyFft(indices, x, f);

	for(int i = 0; i < K; i++)
	{
		f_real[i] = f[i].real;
		f_imag[i] = f[i].imag;
	}
}

int main(int argc, char* argv[])
{
	int i ;

	if(argc < 2)
	{
		printf("Error: missing output file.\n");
		return 0;
	}

	char* outputFilename = argv[1];

	// prepare the output file for writting the theta values
	output = fopen(outputFilename, "w+");

	// create the arrays
	x_real = (float*)malloc(K * sizeof (float));
	x_imag = (float*)malloc(K * sizeof (float));
	f_real = (float*)malloc(K * sizeof (float));
	f_imag = (float*)malloc(K * sizeof (float));
	indices = (int*)malloc(K * sizeof (int));

	if(x_real == NULL || x_real == NULL || f_real == NULL || f_real == NULL || indices == NULL)
	{
		fprintf(output, "cannot allocate memory for the triangle coordinates\n");
		return -1 ;
	}

	for(i = 0; i < K; i++)
	{
		//x_real[i] = i < (K / 100) ? 1.0 : 0.0;
   		x_real[i] = i < (K / 2) ? 1.0 : 0.0;
		x_imag[i] = 0 ;
        fprintf(output, "Element %d: %.4f+i*%.4f\n", i, x_real[i], x_imag[i]);
	}

	// This does the FFT
	radix2DitCooleyTykeyFftWrapper(indices, x_real, x_imag, f_real, f_imag) ;

	for(i = 0;i < K ; i++)
	{
        fprintf(output, "%.4f %.4f, %d\n", f_real[i], f_imag[i], indices[i]);
	}


	fclose(output);

	return 0 ;
}