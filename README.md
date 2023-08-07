# COaT_Project 2023
Project for the Code Optimization and Transformation course 2023 - integrate TAFFO and PandA-Bambu.

## Goal

Perform the HLS (High Level Synthesis) of programs that have first had their floating point operations optimized in fixed point ones with the aid of TAFFO. The HLS part is instead done via PandA-Bambu. <br>
See the following links for infomation regarding the two tools:
- TAFFO: https://github.com/TAFFO-org/TAFFO
- PandA-Bambu: https://github.com/ferrandi/PandA-bambu

## Overview

Currently the repository contains various test cases revolving around floating point operations. Some of the tests originate from examples provided by either TAFFO or PandA-Bambu, as can be understood from their names.

### Folder organization

In each folder there are always the following files:
- **test.c**: The code for the test, the target of the HLS is always the function invoked by main whose name coincides with the test's one;
- **test.ll**: The LLVM-IR representation of **test.c** obtained with TAFFO, usually with the value names preserved for readability;
- **test_*.c**: Variants of **test.c** used to explore different behaviours of tools;
- **test.xml**: Contains the values for PandA-Bambu's simulations, note that for when the HLS starts from an LLVM-IR parameter names are in the form "PdN" with N realtive to the IR without preserved names. The same **test.xml** contains also the values for when the HLS is conducted directly from the source, and those share the name of the source's parameters.
- **test_generator.py**: Python script used to generate **test.xml**'s content.
- **panda_log_opt.txt**: Console output of PandA-Bambu. This is specific to the code **optimized with TAFFO**;
- **panda_log.txt**: Same as **panda_log_opt.txt** but contains the log for the code **without utilizing TAFFO**;
- **results_opt.txt**: Report generated by PandA-Bambu after the simulation of the generated design, the first column's **1**-s indicate a successful simulation, while the second column reports the number of clock cycles the simulation took to complete. Those specifically are the results for the code **optimized with TAFFO**;
- **results.txt**: Same as **results_opt.txt** but contains the results for the code **without utilizing TAFFO**;
- **notes.txt**: Report regarding the status of the test, containing also additional comments or procedures used to perform the test;

In some cases there are subfolders within a test's folder, those recursively mirror the same structure detailed above, and their purpose is to separate the results and HLS output for slightly different versions of the test.

### The tests

Here is the current list of tests:

- **ComputeConvexHull**: Computes the convex hull around the given set of points [-> wikipedia <-](https://en.wikipedia.org/wiki/Convex_hull);
- **ComputeFFT**: Computes the Fast Furier Transform implemented via the Cooley-Tukey radix-2 Decimation in Time (DIT) FFT algorithm [-> wikipedia <-](https://en.wikipedia.org/wiki/Cooley%E2%80%93Tukey_FFT_algorithm);
- **ComputePi**: Computes Pi with the Madhava-Leibniz formula [-> wikipedia <-](https://en.wikipedia.org/wiki/Leibniz_formula_for_pi);
- **ComputeSinCos**: Computes $sin(\pi/12)$ and $cos(\pi/6)$ via the Taylor expansion of Cosine [-> wikipedia <-](https://en.wikipedia.org/wiki/Taylor_series);
- **ComputeSqrt**: Compute the Square root of a provided number with the Newton-Raphson method [-> wikipedia <-](https://en.wikipedia.org/wiki/Newton%27s_method);
- **FromPanda_fft_float**: Fast Furier Transfom example from here [-> panda-github <-](https://github.com/ferrandi/PandA-bambu/tree/dev/panda/examples/fft_example);
- **FromPanda_mm_float**: Matrix multiplication example from here [-> panda-github <-](https://github.com/ferrandi/PandA-bambu/tree/dev/panda/examples/mm_float);
- **FromPanda_mm_float_inside_opt**: Variant of **FromPanda_mm_float** made specifically to synthesize the floating point to fixed point coversions;
- **FromTaffo_axbench_fft**: Fast Furier Transfom example from here [-> taffo-github <-](https://github.com/TAFFO-org/TAFFO/tree/master/test/axbench/fft);
- **FromTaffo_axbench_inversek2j**: Forward and inverse kinematics example from here [-> taffo-github <-](https://github.com/TAFFO-org/TAFFO/tree/master/test/axbench/inversek2j);
- **FromTaffo_fpbench_CX**: Example from here [-> taffo-github <-](https://github.com/TAFFO-org/TAFFO/tree/master/test/fpbench/CX);
- **FromTaffo_fpbench_CY**: Example from here [-> taffo-github <-](https://github.com/TAFFO-org/TAFFO/tree/master/test/fpbench/CY);
- **FromTaffo_fpbench_CarbonGas**: Example from here [-> taffo-github <-](https://github.com/TAFFO-org/TAFFO/tree/master/test/fpbench/carbonGas);
- **FromTaffo_fpbench_doppler**: Example from here [-> taffo-github <-](https://github.com/TAFFO-org/TAFFO/tree/master/test/fpbench/doppler);
- **FromTaffo_fpbench_instantCurrent**: Example from here [-> taffo-github <-](https://github.com/TAFFO-org/TAFFO/tree/master/test/fpbench/instantCurrent);
- **FromTaffo_fpbench_jetEngine**: Example from here [-> taffo-github <-](https://github.com/TAFFO-org/TAFFO/tree/master/test/fpbench/jetEngine);
- **FromTaffo_fpbench_leadLag**: Example from here [-> taffo-github <-](https://github.com/TAFFO-org/TAFFO/tree/master/test/fpbench/leadLag);
- **FromTaffo_fpbench_triangle**: Example from here [-> taffo-github <-](https://github.com/TAFFO-org/TAFFO/tree/master/test/fpbench/triangle);
- **FromTaffo_fpbench_turbine1**: Example from here [-> taffo-github <-](https://github.com/TAFFO-org/TAFFO/tree/master/test/fpbench/turbine1);
- **FromTaffo_test3**: Example from here [-> taffo-github <-](https://github.com/TAFFO-org/TAFFO/blob/master/test/simple-test-cases/test3.c);
- **NormalizeVector**: Transforms a vector to have a unitary norm;
- **SimpleTaffoTest**: A few trivial tests to verify that TAFFO and PandA-Bambu are working properly;
- **TrainLogisticRegression**: Perform the gradient descent training of a logistic regression machine learning model [-> wikipedia <-](https://en.wikipedia.org/wiki/Logistic_regression);

Currently not all test are working all the way through TAFFO, HLS and simulation, refer to the **notes.txt** files for the details of each test.

### Results

A major decision to be made during the process is where to place the floating point to fixed point conversion. Since generating appropriate test values and verifying test results with the conversion **not** synthesized proved challenging (I am still exploring this possibility), note that **all the following results and those in the repository assume that the conversion is synthesized** and the I/O with the design is performed with floating point values. 

The latest comprehensive list of measured performance metrics on the various test can be reviewed here:<br>
[--> link to the excel document <--](https://polimi365-my.sharepoint.com/:x:/g/personal/10669641_polimi_it/EQ8R5ElhK_BKmf_rSk1-DioBY5HdXF9fdG_eAb6Fkf4CdQ?e=v3GLxB)

## Procedures

The specific versions of the tools used in this project were chosed to let both use LLVM-12, since it is the only LLVM version both fully support:
- **TAFFO**: master branch pre-merge of spring 2023 https://github.com/TAFFO-org/TAFFO/tree/0a8cb2d7d699977f9ae3894493b95f3098e7a067<br>
    The lastest "master" branch was used as well whenever possible, but it uses LLVM-15, thus it is often incompatible with PandA-Bambu's LLVM-12. The version at the link instead uses LLVM-12 as well.
- **PandA-Bambu**: AppImage released in early 2023 https://github.com/ferrandi/PandA-bambu/releases/tag/v2023.1

### Coding conventions

The main conventions followed while developing the tests were:

- Write the program as a function, its call-graph will be entirely synthesized. Lets call it "root function".
- Within the code to be synthesized, avoid using arrays whose size is not known at compile-time.
- Within the code to be synthesized, avoid using I/O related instructions, only rely on the pointers given as parameters or return.
- Within the code to be synthesized, avoid avoid using recursion, convert it into iteration.
- From the root function, to return a scalar values you can utilize "return", otherwise pass as argument a pointer to an array where the results will be written, avoid using "malloc".
- Utilize TAFFO's annotations only within the root function and other functions it calls, do not annotate the root function's definition itself, this way the floating-point to fixed-point and viceversa conversion will be synthesized as well.
- An effective method is, as the first thing in the root function, to copy over every received floating-point argument that you intend to convert into another instance of the same type that is annotated with TAFFO. Then continue to use this new instance withing the function.
- Optionally, write a test-main that utilizes such function, giving it realistic inputs and printing the results.

If Verilator's simulation fails, utilize verbosity level 4 "-v 4" and check which outputs differ from expected ones.
Likely the cause is too-large floating point values, try reducing the upper and lower bounds for values used in the testbenches below those specified in TAFFO's "scalar(range())".<br>
Since you are forced to use array lengths known at compile time, even when not making use of an entire array, make sure to initialize it to valid values (usually 0), this is especially true for testbench values.

Currently when TAFFO converts a floating point division in fixed point it is very likely that integer types larger than "i64", like "i96" and "i128", will be used in the IR. Such values cannot be currently handled by PandA-Bambu, resulting in a clang frontend error. In the next paragraph an option to prevent their usage is given, but if the division's operands are too small, it might result in division-by-0 exceptions. As of now the only solution to such issues is disabling TAFFO's optimization on the dividend and divisor variables with `__attribute__((annotate("scalar(disabled)")))`.

### CLI commands overview

Here are the main commands used to generate the LLVM-IR, run the HLS and the simulations.

- Produce the LLVM-IR optimized with TAFFO:<br>
    ```
    taffo -fno-discard-value-names -S -emit-llvm -o test.ll test.c
    ```
    Add the `-lm` option if `math.h` needs to be linked.<br>
    If types like `i96` or `i128` are generated in the LLVM-IR, add the options `-Xconversion -maxtotalbitsconv -Xconversion 64` and `-Xdta -maxtotalbits -Xdta 64`. This is because currently PandA-Bambu cannot deal with such types, thus the first options prevents them from being used in intermediate types of multiplications and divisions, while the second one prevents them from being used as the integer version of originally-float values.
- Run the HLS on TAFFO's produced LLVM-IR:<br>
    ```
    bambu-2023.1.AppImage test.ll --use-raw -v 2 --top-fname=<function_name_wrt_the_IR> --compiler=I386_CLANG12 --simulate --simulator=VERILATOR --verilator-parallel |& tee panda_log_opt.txt
    ```
    To specify a target device for later synthesis use `--device-name=<name>`.<br>
    To see the input and output of each simulation use an higher log verbosity: `-v 4`<br>
    Add the `-lm -ffast-math --libm-std-rounding` options if `math.h` needs to be linked.<br>
    ~~Also consider using `-fsingle-precision-constant -Os --experimental-setup=BAMBU`.~~<br>
    Consider as target device: `--device-name=xc7vx690t-3ffg1930-VVD`.
- Run the HLS on the original code:<br>
    ```
    bambu-2023.1.AppImage test.c -v 2 --top-fname=<function_name_wrt_the_sourcecode> --compiler=I386_CLANG12 --simulate --simulator=VERILATOR |& tee panda_log.txt
    ```
    Add the `-lm -ffast-math --libm-std-rounding` options if `math.h` needs to be linked.<br>
    Consider as target device: `--device-name=xc7vx690t-3ffg1930-VVD`.
- Generate new testbench values:<br>
    ```
    python3 test_generator.py <args> > test.xml
    ```
    Different generators might require some command-line arguments.
- Gather and print flip-flop counts:<br>
    ```
    python3 get_flipflops_count.py
    ```

## Run all the tests

Before running the tests:

```
sudo chmod +x run_tests.sh
export BAMBU=/path/to/Bambu.AppImage {or binary}
export TAFFO=/path/to/TAFFO {only if it was not installed system-wise}
```

Run the tests:
```
./run_tests.sh --use=all
```

This procedure will produce two sub-folders in each test’s folder:
- synthesis_with_opt
- synthesis_no_opt

They respectively contain the output of PandA-Bambu (and, if enabled, Vivado) for the test with TAFFO’s optimization and without it.

### Options for `run_tests.sh`:
- `--use=all` : runs all the tests.
- `--use=<num>(,<num>)*` : specifies which tests to run, simply run `./run_tests.sh` to get a list of the tests and their relative number.
- `--vivado` : enables the evaluation of the design through Vivado, after PandA-Bambu.
- `--device-name=<name>` : the [same as in PandA-Bambu](https://panda.deib.polimi.it/?page_id=916).<br>
If not specified, the default device is **xc7vx690t-3ffg1930-VVD**, and it is the only tested one.
Regardless of the device you specify, ensure your install of Vivado has support for it if you plan to also use `--vivado`.<br>
Copying from PandA-Bambu:<br>
<i>Specify the name of the device. Three different cases are foreseen:
    * Xilinx:  a comma separated string specifying device, speed grade and package (e.g. "xc7z020,-1,clg484,VVD")
    * Altera:  a string defining the device string (e.g. EP2C70F896C6)
    * Lattice: a string defining the device string (e.g. LFE5U85F8BG756C)
    * NanoXplore: a string defining the device string (e.g. nx2h540tsc)
    </i><br>
- `--gen` : generates new random testbench inputs instead of using the already existing ones (see test.xml files).
- `--no-regen-taffo` : utilize the already existing, TAFFO-optimized, `.ll` files, without recompiling the source through TAFFO.
- `--no-opt` : does NOT run through PandA, and Vivado, if enabled, the TAFFO-optimized versions of the tests. 
- `--no-unopt` : does NOT run through PandA, and Vivado, if enabled, the versions of the tests NOT optimized by TAFFO.

The usage of `--no-regen-taffo` is highly suggested, as currently some of the `.ll` files were produced with TAFFO's develop branch, and other with the last version of TAFFO that used LLVM-12.

<i>**Example:** a command that runs tests 1, 2 and 3, both with and without optimization, through PandA-Bambu and Vivado, without regenerating neither the LLVM-IR nor the values for the testbenches:</i>

```
./run_tests.sh --use=1,2,3 --vivado --no-regen-taffo
```