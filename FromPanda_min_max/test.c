#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define SIZE 8

void min_max(float *input __attribute((annotate("scalar(range(0, 256))"))),
   int num_elements,
   float *max __attribute((annotate("scalar(range(0, 256))"))),
   float *min __attribute((annotate("scalar(range(0, 256))"))))
{
   float local_max __attribute((annotate("scalar(range(0, 256))"))) = input[0];
   float local_min __attribute((annotate("scalar(range(0, 256))"))) = input[0];
   int i = 0;
   for (i = 0; i < num_elements; i++)
   {
      if (input[i] > local_max)
      {
         local_max = input[i];
      }
      else if (input[i] < local_min)
      {
         local_min = input[i];
      }
   }
   *min = local_min;
   *max = local_max;
}

int main()
{
   //float source[] = {4, 2, 7, 8, 2, 1, 5, 11};
    srand((unsigned int)time(NULL));

    float in_v[SIZE] __attribute((annotate("target('in_vector') scalar(range(0, 256))")));
    float out_max __attribute((annotate("target('out_max') scalar(range(0, 256))")));
    float out_min __attribute((annotate("target('out_min') scalar(range(0, 256))")));

    /*
        Doing the direct assignment:
            '''float in_v[SIZE] __attribute((annotate("target('in_vector') scalar(range(0, 256))"))) = {4, 2, 7, 8, 2, 1, 5, 11};'''
        does not work, the silly copying step from "source" is required, so that "fptoui" is used in the IR.
        Likely something is screwed up with the direct conversion via "llvm.memcpy.p0i8.p0i8.i64"...
    */

    for (int i = 0; i < SIZE; i++)
        in_v[i] = (float)rand()/(float)(16777216);  //16777216  = 2^24
        //in_v[i] = source[i];

    printf("Initial vector: ");
    for (int i = 0; i < SIZE; i++)
        printf("%.2f ", in_v[i]);
    putchar('\n');

    min_max(in_v, SIZE, &out_max, &out_min);

    printf("Max: %.2f\nMin: %.2f\n", out_max, out_min);

    return 0;
}