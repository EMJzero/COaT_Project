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
- **test.xml**: Contains the values for PandA-Bambu's simulations;
- **test_generator.py**: Python script used to generate **test.xml**'s content;
- **interfaces.xml**: Specifies the interface of the top function that will be synthesized;
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
- **MDPPolicyIteration**: Solves a simple Markov Decision Process via the Policy Iteration Method [-> wikipedia <-](https://en.wikipedia.org/wiki/Markov_decision_process#Policy_iteration);
- **NormalizeVector**: Transforms a vector to have a unitary norm;
- **SimpleTaffoTest**: A few trivial tests to verify that TAFFO and PandA-Bambu are working properly;
- **TrainLogisticRegression**: Performs the gradient descent training of a logistic regression machine learning model [-> wikipedia <-](https://en.wikipedia.org/wiki/Logistic_regression);

Currently not all test work under the same conditions, refer to the **notes.txt** files for the details of each test.

### Results

A major decision to be made during the process is where to place the floating point to fixed point conversion. Since generating appropriate test values and verifying test results with the conversion **not** synthesized proved challenging (I am still exploring this possibility), note that **all the following results and those in the repository assume that the conversion is synthesized** and the I/O with the design is performed with floating point values. 

The latest comprehensive list of measured performance metrics on the various tests can be reviewed here:<br>
[--> link to the excel document <--](https://polimi365-my.sharepoint.com/:x:/g/personal/10669641_polimi_it/EQ8R5ElhK_BKmf_rSk1-DioBY5HdXF9fdG_eAb6Fkf4CdQ?e=v3GLxB)

## Procedures

The specific versions of the tools used in this project were chosed to let both use LLVM-12, since it is the only LLVM version both fully support:
- **TAFFO**: master branch pre-merge of spring 2023 https://github.com/TAFFO-org/TAFFO/tree/0a8cb2d7d699977f9ae3894493b95f3098e7a067<br>
    The lastest "master" branch was used as well whenever possible, but it uses LLVM-15, thus it is often incompatible with PandA-Bambu's LLVM-12. The version at the link instead uses LLVM-12 as well.
- **PandA-Bambu**: AppImage released in early 2023 https://github.com/ferrandi/PandA-bambu/releases/tag/v2023.1. Just by changing the used clang version to 16 [this](https://release.bambuhls.eu/bambu-dev-LP.AppImage) version should work too, however its testing is still ongoing.

### Coding conventions

The main conventions followed while developing the tests were:

- **Write the program as a function**, its call-graph will be entirely synthesized. Lets call it **"top function"**.
- Within the code to be synthesized, **use only arrays whose size is known at compile-time**.
- Within the code to be synthesized, **avoid using I/O related instructions** (no printf and alike), only rely on the pointers given as parameters or return.
- Within the code to be synthesized, avoid **avoid using recursion**, convert it into iteration.
- From the top function, to return a scalar values you can utilize "return", otherwise pass as argument a pointer to an array where the results will be written, avoid using "malloc".
- Utilize TAFFO's annotations only within the top function and other functions it calls, do not annotate the top function's definition itself, this way the floating-point to fixed-point and viceversa conversion will be synthesized as well.
- An effective approach to write the top function is, as the first thing within it, to copy over every received floating-point argument that you intend to convert into another instance of the same data structure that is, however, annotated with TAFFO. Then continue to use this new instance withing the function.
- **Specify the interface of the top function in "interfaces.xml"**, giving the type and, eventually, size, of every parameter. This is because when giving PandA-Bambu and “.ll” file as input, such file retains less information that its “.c” counterpart and those need to be reinstated via “interfaces.xml”. See example below.
- **Write in "test.xml"** the testbenches for the code. See example below.
- Optionally, write a test-main that utilizes such function, giving it realistic inputs and printing the results.


<i>**Example**:</i>

```C
// filename: "test.c"
#define SIZE 4

void top_function(int size, float *v_float) {
    // Instantiate the vector that TAFFO will convert to fixed point
    float v[SIZE] __attribute((annotate("target('v') scalar()")));

    // Copy over the floating point array to the one converted to fixed point
    for (int i = 0; i < size && i < SIZE; i++)
        v[i] = v_float[i];

    // Operate on v

    // Copy back the fixed point array to the floating point one
    for (int i = 0; i < size && i < SIZE; i++)
        v_float[i] = v[i];
}

int main() {
    float v_test[SIZE] = {1, 2, 3, 4};
    top_function(SIZE, v_test);
}
```

```XML
<!-- filename: "interfaces.xml" -->
<?xml version="1.0"?>
<module>
    <function id="top_function">
        <!-- Use "default" for scalars and "array" for array pointers -->
        <arg id="Pd5" interface_type="default" interface_typename="int" interface_typename_include="" interface_typename_orig="int"/>
        <!-- For "size" specify the maximum possible one as per the code constants -->
        <arg id="Pd6" interface_type="array" interface_typename="float*" interface_typename_include="" interface_typename_orig="float*" size="4"/>
    </function>
</module>
```

**Note:** Consider any pointer to a scalar value as an "array" of size 1.

```XML
<!-- filename: "test.xml" -->
<?xml version="1.0"?>
<function>
    <testbench
    Pd5="scalar"
    Pd6="{array_value_0, array_value_1, array_value_2, array_value_3}"
    size="scalar"
    v_float="{array_value_0, array_value_1, array_value_2, array_value_3}"
    />
</function>
<!-- in practice replace "scalar" and "array_value_N" with actual values -->
```

**Note:** When the HLS starts from the LLVM-IR, parameter names must be in the form "PdN" with "N" realtive to the IR without preserved names. While when the HLS starts from the C source parameter names must exactly match those used in C. Thus it is useful to specify in the same testbench the values twice, once w.r.t. the IR and once w.r.t. the C source.

**Note:** For names in the form "PdN", "N" normally starts at "5" with the first parameter and increase by one with each successive one, however this might not always be the case, refer to the error PandA-Bambu gives for missing parameters to get the initial value of "N". This applies to both "interfaces.xml" and "test.xml".

### Common issues

The most common issues solved while developing the tests were:

- If **PandA-Bambu could not find the specified top function** check the name's correctness within the IR file, and if withing the IR file the function is specified as "internal" alter that to "dso_local".
- If **PandA-Bambu could not find the implementation for some function(s)** check that any compiler flag relative to libraries to link is passed through to PandA-Bambu. This is often the case for "math.h". If the funciton in question is "fmuladd" run `remove_fmuladd.py <path/to/.ll>`. If it is any other LLVM intrinsic function you will have to manually modify the IR to remove it.
- If **Verilator's simulation fails**, utilize verbosity level 4 `-v 4` and check which outputs differ from expected ones. One likely cause might be too-large floating point values, try reducing the upper and lower bounds for values used in the testbenches below those specified in TAFFO's `scalar(range())`. Alternatively ensure the `--libm-std-rounding` option is specified for PandA-Bambu, as it forces it to use the correct (but more costly) implementations of "math.h"'s functions.
- A single **"stoull" printed after a simulation error** means that there is a scalar value written as an array (with curly braces) in the testbench values, remove the braces.
- If **verilator returns a size error** check that testbenches initialize all the function parameters in their entirety even if they are not fully utilized, as their size must be static at compile time and they must be entirely specified, regardless of wheather or not they are fully utilized.
- If **the simulation could not find some parameter**, remember that when you give PandA-Bambu the IR file, it expects parameters progressively named as PdN (where N usually starts at 5), while if it is given the C file it expectes parameter named as in it. Check the testbenches accordingly to this, use the error printed to adjust the initial value of N if needed.
- If the simulation returns **"ERROR: Co-sim: Memory parameter ... (...) mismatch with respect to gold reference."** you have specified the wrong types or array sizes within "interfaces.xml".
- If you PandA-Bambu gives a **clang frontend error** the cause might be one of:
    - You have some arrays whose size is not static at compile time withing the function(s) to be synthesized.
    - Currently when TAFFO converts a floating point division in fixed point it is very likely that integer types larger than "i64", like "i96" and "i128", will be used in the IR. Such values cannot be currently handled by PandA-Bambu, resulting in the clang frontend error. In the next paragraph an option to prevent their usage is given, but if the division's operands are too small, it might result in division-by-0 exceptions. As of now the only solution to such issues is disabling TAFFO's optimization on the dividend and divisor variables with `__attribute__((annotate("scalar(disabled)")))`.

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
    bambu-2023.1.AppImage test.ll --use-raw -v 2 --top-fname=<function_name_wrt_the_IR> --compiler=I386_CLANG12 --generate-interface=INFER --interface-xml-filename=interfaces.xml --simulate --simulator=VERILATOR --verilator-parallel |& tee panda_log_opt.txt
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
- Gather and print flip-flop counts and Vivado's results summary:<br>
    ```
    python3 get_flipflops_count.py
    python3 get_vivado_results.py
    ```

## Run the tests

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

The usage of `--no-regen-taffo` is highly suggested, as currently some of the `.ll` files were produced with TAFFO's develop branch, and others with the last version of TAFFO that used LLVM-12.

<i>**Example:** a command that runs tests 1, 2 and 3, both with and without optimization, through PandA-Bambu and Vivado, without regenerating neither the LLVM-IR nor the values for the testbenches:</i>

```
./run_tests.sh --use=1,2,3 --vivado --no-regen-taffo
```