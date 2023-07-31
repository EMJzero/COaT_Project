#ifndef __FOURIER_HPP__
#define __FOURIER_HPP__


#include "complex.hpp"
#include <iostream>

void radix2DitCooleyTykeyFftWrapper(int* indices, float * x_real, float * x_imag, float * f_real, float * f_imag) ;

void radix2DitCooleyTykeyFft(int* indices, Complex* x, Complex* f) ;

#endif
