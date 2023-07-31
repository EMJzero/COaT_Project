#include <cstdio>
#include <iostream>
#include "fourier.hpp"
#include <fstream>

static int* indices;
static Complex* x;
static Complex* f;

#define K 1024

int main(int argc, char* argv[])
{
	int i ;

	//int __attribute((annotate("target('n') scalar(range(1,65536) final disabled)"))) n = atoi(argv[1]);
	//std::string outputFilename 	= argv[2];
	std::string outputFilename 	= argv[1];

	// prepare the output file for writting the theta values
	std::ofstream outputFileHandler;
	outputFileHandler.open(outputFilename);
	outputFileHandler.precision(5);

	// create the arrays
	x 		= (Complex*)malloc(K * sizeof (Complex));
	f 		= (Complex*)malloc(K * sizeof (Complex));
	indices = (int*)malloc(K * sizeof (int));

	if(x == NULL || f == NULL || indices == NULL)
	{
		std::cout << "cannot allocate memory for the triangle coordinates!" << std::endl;
		return -1 ;
	}

	for(i = 0; i < K; i++)
	{
		x[i].real = i < (K / 100) ? 1.0 : 0.0;
		x[i].imag = 0 ;
	}

	// This does the FFT
	radix2DitCooleyTykeyFft(indices, x, f) ;

	for(i = 0;i < K ; i++)
	{
	  outputFileHandler << f[i].real << " " << f[i].imag << " " << indices[i] << std::endl;
	}


	outputFileHandler.close();

	return 0 ;
}
