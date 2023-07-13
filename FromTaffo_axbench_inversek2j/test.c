/*
 * inversek2j.cpp
 * 
 *  Created on: Sep. 10 2013
 *			Author: Amir Yazdanbakhsh <yazdanbakhsh@wisc.edu>
 */


#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>

#define PI 3.141592653589

#define n 100

#define ANNOTATION_RANGE "range(1e-6,1.5707963267948966192313216916397)"

float  __attribute((annotate("scalar(range(0.5,0.5) error(1e-8))"))) l1 = 0.5 ;
float  __attribute((annotate("scalar(range(0.5,0.5) error(1e-8))"))) l2 = 0.5 ;

void test(float * t1t2xy_f)
{
	float t1t2xy[n*2*2] __attribute((annotate("target('t1t2xy') scalar()"))) ;

	for(int i = 0; i < n * 2 * 2; i += 2*2)
	{
		t1t2xy[i] = t1t2xy_f[i];
		t1t2xy[i + 1] = t1t2xy_f[i + 1];
	}

	for(int i = 0 ; i < n * 2 * 2 ; i += 2 * 2)
	{
		t1t2xy[i + 2] = l1 * cos(t1t2xy[i + 0]) + l2 * cos(t1t2xy[i + 0] + t1t2xy[i + 1]) ;
		t1t2xy[i + 3] = l1 * sin(t1t2xy[i + 0]) + l2 * sin(t1t2xy[i + 0] + t1t2xy[i + 1]) ;
	}

	for(int i = 0 ; i < n * 2 * 2 ; i += 2 * 2)
	{
		float __attribute((annotate("scalar(range(0.5,4.934802) final)"))) sqtmp = (t1t2xy[i + 2] * t1t2xy[i + 2] + t1t2xy[i + 3] * t1t2xy[i + 3]);

		t1t2xy[i + 1] = (float)acos(((t1t2xy[i + 2] * t1t2xy[i + 2]) + (t1t2xy[i + 3] * t1t2xy[i + 3]) - (l1 * l1) - (l2 * l2))/(2 * l1 * l2));
		t1t2xy[i + 0] = (float)asin((t1t2xy[i + 3] * (l1 + l2 * cos(t1t2xy[i + 1])) - t1t2xy[i + 2] * l2 * sin(t1t2xy[i + 1]))/sqtmp);
	}
}

int main(int argc, const char* argv[])
{
	FILE * file = fopen("somedata.data", "r");

	float * t1t2xy = (float*)malloc(n * 2 * 2 * sizeof(float));

	if(t1t2xy == NULL)
	{
		printf("Cannot allocate memory for the coordinates an angles!");
		return -1 ;
	}

	srand (time(NULL));

	for (int i=0; i<n*2*2; i+=2*2) {
		float theta1, theta2;
		fscanf(file, "%f\t%f", &theta1, &theta2);

		t1t2xy[i] = theta1;
		t1t2xy[i + 1] = theta2;
	}

	test(t1t2xy);

	for(int i = 0 ; i < n * 2 * 2 ; i += 2 * 2)
	{
		printf("%f\t%f\n", t1t2xy[i+0], t1t2xy[i+1]);
	}

	free(t1t2xy) ; 
	t1t2xy = NULL ;

	return 0 ;
}
