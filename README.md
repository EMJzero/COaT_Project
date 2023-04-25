# COaT_Project 2023
Project for the Code Optimization and Transformation course 2023 - integrate TAFFO and PandA-Bambu.

## Goal

Perform the HLS (High Level Synthesis) of programs that have first had their floating point operations optimized in fixed point ones with the aid of TAFFO. The HLS part is instead done via PandA-Bambu. <br>
See the following links for infomation regarding the two tools:
- TAFFO: https://github.com/TAFFO-org/TAFFO
- PandA-Bambu: https://github.com/ferrandi/PandA-bambu

## Overview

Currently the repository contains various test cases revolving around floating point operations. Some of the tests originate from examples provided by either TAFFO or PandA-Bambu, as can be understood from their names.

In each folder there are one or more `.c` files containing the test, multiple files are just variations of the same test with minor changes. <br>
The `notes.txt` of each folder reports the current status of that test.

Here is the current list of tests:

- **ComputePi**: Computes Pi with the Madhava-Leibniz formula (https://en.wikipedia.org/wiki/Leibniz_formula_for_pi)
- **ComputeSinCos**: Computes $sin(\pi/12)$ and $cos(\pi/6)$ via the Taylor expansion of Cosine (https://en.wikipedia.org/wiki/Taylor_series)
- **ComputeSqrt**: Compute the Square root of a provided number with the Newton-Raphson method (https://en.wikipedia.org/wiki/Newton%27s_method)
- **FromPanda_fft_float**: Fast Furier Transfom example from here https://github.com/ferrandi/PandA-bambu/tree/dev/panda/examples/fft_example
- **FromPanda_mm_float**: Matrix multiplication example from here https://github.com/ferrandi/PandA-bambu/tree/dev/panda/examples/mm_float
- **FromTaffo_test3**: Example from here https://github.com/TAFFO-org/TAFFO/blob/master/test/simple-test-cases/test3.c
- **NormalizeVector**: Transforms a vector to have a unitary norm (Uses `math.h`'s `sqrtf` function)
- **SimpleTaffoTest**: A trivial test to verify that TAFFO and PandA-Bambu are working properly