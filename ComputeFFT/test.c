#include <stdio.h>
#include <math.h>

#define N 64

#define ANNOTATION_RANGE(LB, UB) "scalar(range(" LB "," UB ") final)"

#ifndef M_PI
#define M_PI 3.1415926535897931
#endif

int log2_manual(int n) {
    if (n <= 0) {
        return -1;
    }

    int log_val = 0;
    n--;

    while (n > 0) {
        n >>= 1;
        log_val++;
    }

    return log_val;
}

void fft(int n, double in_real[N], double in_imag[N], double out_real[N], double out_imag[N], int inverse) {

    int bits = log2_manual(n);
    for (int i = 0; i < n; ++i) {
        int rev = 0;
        for (int j = 0; j < bits; ++j) {
            rev <<= 1;
            rev |= (i >> j) & 1;
        }
        out_real[i] = in_real[rev];
        out_imag[i] = in_imag[rev];
    }

    double cos_angle __attribute((annotate(ANNOTATION_RANGE("-1", "1"))));
    double sin_angle __attribute((annotate(ANNOTATION_RANGE("-1", "1"))));

    double x_real __attribute((annotate(ANNOTATION_RANGE("-100", "100"))));
    double x_imag __attribute((annotate(ANNOTATION_RANGE("-100", "100"))));

    double temp_real __attribute((annotate(ANNOTATION_RANGE("-1000", "1000"))));
    double temp_imag __attribute((annotate(ANNOTATION_RANGE("-1000", "1000"))));
    double new_x_real __attribute((annotate(ANNOTATION_RANGE("-100", "100"))));
    double new_x_imag __attribute((annotate(ANNOTATION_RANGE("-100", "100"))));

    for (int step = 2; step <= n; step <<= 1) {
        int half = step >> 1;
        double angle = 2 * M_PI / step * (inverse ? -1 : 1);
        cos_angle = cos(angle);
        sin_angle = sin(angle);

        for (int i = 0; i < n; i += step) {
            x_real = 1.0;
            x_imag = 0.0;

            for (int j = 0; j < half; ++j) {
                temp_real = x_real * out_real[i + j + half] - x_imag * out_imag[i + j + half];
                temp_imag = x_real * out_imag[i + j + half] + x_imag * out_real[i + j + half];

                out_real[i + j + half] = out_real[i + j] - temp_real;
                out_imag[i + j + half] = out_imag[i + j] - temp_imag;

                out_real[i + j] += temp_real;
                out_imag[i + j] += temp_imag;

                new_x_real = x_real * cos_angle - x_imag * sin_angle;
                new_x_imag = x_real * sin_angle + x_imag * cos_angle;
                x_real = new_x_real;
                x_imag = new_x_imag;
            }
        }
    }

    if (inverse) {
        for (int i = 0; i < n; ++i) {
            out_real[i] /= n;
            out_imag[i] /= n;
        }
    }
}

/*void fft_recursive(int n, double in_real[N], double in_imag[N], double out_real[N], double out_imag[N], int inverse) {
    if (n <= 1) {
        out_real[0] = in_real[0];
        out_imag[0] = in_imag[0];
        return;
    }

    double even_real[N / 2] __attribute((annotate(ANNOTATION_RANGE("-1000", "1000"))));
    double even_imag[N / 2] __attribute((annotate(ANNOTATION_RANGE("-1000", "1000"))));
    double odd_real[N / 2] __attribute((annotate(ANNOTATION_RANGE("-1000", "1000"))));
    double odd_imag[N / 2] __attribute((annotate(ANNOTATION_RANGE("-1000", "1000"))));

    for (int i = 0; i < n / 2; ++i) {
        even_real[i] = in_real[2 * i];
        even_imag[i] = in_imag[2 * i];
        odd_real[i] = in_real[2 * i + 1];
        odd_imag[i] = in_imag[2 * i + 1];
    }

    fft(n / 2, even_real, even_imag, out_real, out_imag, inverse);
    fft(n / 2, odd_real, odd_imag, out_real + n / 2, out_imag + n / 2, inverse);

    double angle = 2 * M_PI / n * (inverse ? -1 : 1);
    double cos_angle __attribute((annotate(ANNOTATION_RANGE("-1", "1")))) = cos(angle);
    double sin_angle __attribute((annotate(ANNOTATION_RANGE("-1", "1")))) = sin(angle);
    double x_real __attribute((annotate("scalar()"))) = 1.0;
    double x_imag __attribute((annotate("scalar()"))) = 0.0;

    for (int i = 0; i < n / 2; ++i) {
        double temp_real __attribute((annotate("scalar()"))) = odd_real[i] * x_real - odd_imag[i] * x_imag;
        double temp_imag __attribute((annotate("scalar()"))) = odd_real[i] * x_imag + odd_imag[i] * x_real;

        out_real[i] = even_real[i] + temp_real;
        out_imag[i] = even_imag[i] + temp_imag;

        out_real[i + n / 2] = even_real[i] - temp_real;
        out_imag[i + n / 2] = even_imag[i] - temp_imag;

        if (inverse) {
            out_real[i] /= 2;
            out_imag[i] /= 2;

            out_real[i + n / 2] /= 2;
            out_imag[i + n / 2] /= 2;
        }

        double new_x_real __attribute((annotate("scalar()"))) = x_real * cos_angle - x_imag * sin_angle;
        double new_x_imag __attribute((annotate("scalar()"))) = x_real * sin_angle + x_imag * cos_angle;
        x_real = new_x_real;
        x_imag = new_x_imag;
    }
}*/

// TARGET THIS AS THE TOP FUNCTION FOR PandA-Bambu!
void fftWrapper(int n, double in_real[N], double in_imag[N], double out_real[N], double out_imag[N], int inverse) {
	double in_real_fixed[N] __attribute((annotate("target('in_real') " ANNOTATION_RANGE("-1", "1"))));
    double in_imag_fixed[N] __attribute((annotate("target('in_imag') " ANNOTATION_RANGE("-1", "1"))));
    double out_real_fixed[N] __attribute((annotate("target('out_real') errtarget('out_real') " ANNOTATION_RANGE("-1000", "1000"))));
    double out_imag_fixed[N] __attribute((annotate("target('out_imag') errtarget('out_imag') " ANNOTATION_RANGE("-1000", "1000"))));

	for(int i = 0; i < N; i++)
	{
		in_real_fixed[i] = in_real[i];
        in_imag_fixed[i] = in_imag[i];
	}

	fft(n, in_real_fixed, in_imag_fixed, out_real_fixed, out_imag_fixed, 0);

	for(int i = 0; i < N; i++)
	{
		out_real[i] = out_real_fixed[i];
        out_imag[i] = out_imag_fixed[i];
	}
}

long lcg_pseudo_random(long seed) {
    long a = 1103515245;
    long c = 12345;
    long m = 2147483648;

    seed = (a * seed + c) % m;

    return seed;
}

int main() {
    double in_real[N];
    double in_imag[N];
    double out_real[N];
    double out_imag[N];

    printf("Input:\n");
    for(int i = 0; i < N; i++)
	{
   		//in_real[i] = i < (N / 500) ? 1.0 : 0.0;
		//in_imag[i] = 0;
	
        in_real[i] = ((lcg_pseudo_random(i*2)%200) - 100)/100.0;
		in_imag[i] = ((lcg_pseudo_random(i*2 + 1)%200) - 100)/100.0;

        printf("%d) %.4lf\tJx%.4lf\n", i, in_real[i], in_imag[i]);
    }

    fftWrapper(N, in_real, in_imag, out_real, out_imag, 0);

    // To perform inverse FFT, call the function with the inverse flag set to 1
    // fft(N, out_real, out_imag, in_real, in_imag, 1);

    printf("Results:\n");
    for(int i = 0; i < N; i++)
	{
        printf("%d) %.4lf\tJx%.4lf\n", i, out_real[i], out_imag[i]);
	}

    return 0;
}