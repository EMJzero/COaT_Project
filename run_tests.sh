#!/bin/bash

# Function to print the help menu
print_help() {
  echo "Help Menu:"
  echo "  --use=all : runs all the tests."
  echo "  --use=<num>(,<num>)* : specifies which tests to run. Run ./run_tests.sh to get a list of the tests and their relative number."
  echo "  --vivado : enables the evaluation of the design through Vivado, after PandA-Bambu."
  echo "  --device-name=<name> : specify the name of the device. Three different cases are foreseen:"
  echo "               * Xilinx: a comma-separated string specifying device, speed grade, and package (e.g. \"xc7z020,-1,clg484,VVD\")"
  echo "               * Altera: a string defining the device string (e.g. EP2C70F896C6)"
  echo "               * Lattice: a string defining the device string (e.g. LFE5U85F8BG756C)"
  echo "               * NanoXplore: a string defining the device string (e.g. nx2h540tsc)"
  echo "  --gen : generates new random testbench inputs instead of using the already existing ones (see test.xml files)."
  echo "  --no-regen-taffo : utilizes the already existent .ll files without recompiling the source through TAFFO."
  echo "  --no-opt : does NOT run through PandA, and Vivado, if enabled, the TAFFO-optimized versions of the tests."
  echo "  --no-unopt : does NOT run through PandA, and Vivado, if enabled, the versions of the tests NOT optimized by TAFFO."
  echo "  --opt-level=<level> : pass through the choice of optimization level to TAFFO and PandA-Bambu, available levels are:"
  echo "                        'O0', 'O1', 'O2', 'O3', 'Os', 'Of'"
  echo ""
  echo "Ensure to export the environment variable BAMBU (and optionally TAFFO as well) with the path to the relative executable or AppImage."
}

# Check if the "--help" option is specified and print the help menu
if [[ "$@" == *"--help"* ]]; then
  print_help
  exit 0
fi

# Check if the environment variable BAMBU exists
if [ -z "$BAMBU" ]; then
  echo "Error: Environment variable BAMBU is not set. Set it to the path of PandA-Bambu's executable or AppImage."
  exit 1
fi

# List of paths

path_names=(
  "ComputeConvexHull/max100pts,computeConvexHull"
  "ComputeConvexHull/max1000pts,computeConvexHull"
  "ComputeFFT,fftWrapper"
  "ComputePi,compute_pi"
  "ComputeSinCos,manual_cos"
  "ComputeSqrt,NRsqrt"
  "DivisionTest,test"
  "FromPanda_mm_float/16x16,mm"
  "FromPanda_mm_float/32x32,mm"
  "FromPanda_mm_float/64x64,mm"
  "FromPanda_mm_float/128x128,mm"
  "FromPanda_mm_float/256x256,mm"
  "FromTaffo_axbench_inversek2j,test"
  "FromTaffo_fpbench_carbonGas,test"
  "FromTaffo_fpbench_CX,test"
  "FromTaffo_fpbench_CY,test"
  "FromTaffo_fpbench_doppler,test"
  "FromTaffo_fpbench_instantCurrent,test"
  "FromTaffo_fpbench_jetEngine,test"
  "FromTaffo_fpbench_leadLag,test"
  "FromTaffo_fpbench_triangle,test"
  "FromTaffo_fpbench_turbine1,test"
  "MatrixInversion,invert_matrix"
  "MDPPolicyIteration,policyIteration"
  "NormalizeVector,normalize"
  "TrainLogisticRegression,gradient_descent"
  #"FromPanda_mm_float_outside_conv/32x32,mm_1_fixp"
  #"FromTaffo_fpbench_carbonGas_outside_conv,test_1_fixp"
  #"FromTaffo_fpbench_triangle_outside_conv,test_1_fixp"
  #"FromTaffo_fpbench_turbine1_outside_conv,test_1_fixp"
  #"TrainLogisticRegression_outside_conv,gradient_descent_3_fixp"
  #"FromPanda_mm_float_outside_conv/32x32,mm"
  #"FromTaffo_fpbench_carbonGas_outside_conv,test"
  #"FromTaffo_fpbench_triangle_outside_conv,test"
  #"FromTaffo_fpbench_turbine1_outside_conv,test"
  #"TrainLogisticRegression_outside_conv,gradient_descent"
  ) 

# Function to check if an option is present in the command-line arguments
option_present() {
  local option="$1"
  shift
  for arg in "$@"; do
    if [[ "$arg" == "$option"* ]]; then
      return 0
    fi
  done
  return 1
}

# Function to get the specified tuples to use based on the --use option
get_tuples_to_use() {
  local use_option="$1"
  local tuples=()
  if [ "$use_option" == "all" ]; then
    tuples=("${path_names[@]}")
  else
    local indices=(${use_option//,/ })
    for index in "${indices[@]}"; do
      if [ "$index" -ge 0 ] && [ "$index" -lt "${#path_names[@]}" ]; then
        tuples+=("${path_names[$index]}")
      fi
    done
  fi
  echo "${tuples[@]}"
}

run_command() {
  # Join the command components into a single string and remove adjacent spaces
  local command_string="$*"
  command_string=$(echo "$command_string" | tr -s ' ')
  
  eval "$command_string"
}

# Array of allowed options
allowed_options=(
    "--use=all"
    "--use="
    "--vivado"
    "--device-name="
    "--gen"
    "--no-regen-taffo"
    "--no-opt"
    "--no-unopt"
    "--opt-level="
)

# Loop through the provided options if all provided options are valid
for arg in "${@}"; do
    is_allowed=false
    for allowed_arg in "${allowed_options[@]}"; do
        if [[ "${arg}" == ${allowed_arg}* ]]; then
            is_allowed=true
            break
        fi
    done

    if [ "${is_allowed}" = false ]; then
        echo "Error: Option '${arg}' is not allowed."
        exit 1
    fi
done

# Parse command-line arguments to get the --use option value
use_option="none"
for arg in "$@"; do
  if [[ "$arg" == "--use="* ]]; then
    use_option="${arg#*=}"
    break
  fi
done

# If the --use option is not specified, print the help menu and exit
if [ "$use_option" == "none" ]; then
  echo "The --use option must be specified as one of:
  --use=all
  --use=<num>(,<num>)*
Where <num> is chosen from:"

  # Loop through the path_names array to construct the help menu dynamically
  for index in "${!path_names[@]}"; do
    echo "  $index) ${path_names[index]%%,*}"
  done

  echo "Use --help for available options."
  exit 1
fi

# Get the tuples to use based on the --use option
tuples_to_use=($(get_tuples_to_use "$use_option"))

if [ "${#tuples_to_use[@]}" -eq 0 ]; then
  echo "Error: no valid test <num> was provided to --use."
  exit 1
fi

# Check if the option "--device-name=<name>" is specified and extract the device name
device_name="--device-name=xc7vx690t-3ffg1930-VVD"
if option_present "--device-name=" "$@"; then
  for arg in "$@"; do
    if [[ "$arg" == --device-name=* ]]; then
      device_name="$arg"
      break
    fi
  done
fi

# Array of allowed optimization levels
allowed_levels=(
    "O"
    "O0"
    "O1"
    "O2"
    "O3"
    "Os"
    "Of"
)

# Check if the option "--opt-level=<level>" is specified and extract the chosen level
opt_level=""
if option_present "--opt-level=" "$@"; then
  for arg in "$@"; do
    if [[ "$arg" == --opt-level=* ]]; then
      is_allowed=false
      for allowed_level in "${allowed_levels[@]}"; do
          if [[ "${arg#*=}" == ${allowed_level}* ]]; then
              is_allowed=true
              break
          fi
      done

      if [ "${is_allowed}" = false ]; then
          echo "Error: Optimization level '${arg#*=}' is not allowed."
          exit 1
      fi

      opt_level="-${arg#*=}"
      break
    fi
  done
fi

# Iterate through the list of tuples (path, name)
for tuple in "${tuples_to_use[@]}"; do
  # Split the tuple into path and name using comma as the delimiter
  IFS=',' read -r path name <<< "$tuple"

  echo working on $path...

  # Change directory to the current path being iterated over
  cd "$path"

  # Check if the option "--gen" is specified and run test_generator.py
  if option_present "--gen" "$@"; then
    python3 test_generator.py > test.xml
  fi

  # Check if recompilation is enabled
  if ! option_present "--no-regen-taffo" "$@"; then
    # Check if the environment variable TAFFO exists
    if [ -n "$TAFFO" ]; then
      # If TAFFO exists, run the executable specified in TAFFO
      command=("$TAFFO")
    else
      # If TAFFO does not exist, run the command "taffo"
      command=(taffo)
    fi
    command+=(-enable-err -err-out taffo_err_log.txt -Xerr -relerror -fno-discard-value-names -S "$opt_level" -emit-llvm -lm -o test.ll test.c)
    run_command "${command[@]}"
  fi

  # Prepare output directories
  mkdir synthesis_no_opt
  mkdir synthesis_with_opt
  cp test.xml ./synthesis_no_opt
  cp test.xml ./synthesis_with_opt
  cp interfaces.xml ./synthesis_with_opt

  cd -
  cd "$path"/synthesis_with_opt

  # Check disabling option
  if ! option_present "--no-opt" "$@"; then
    command=("$BAMBU" ../test.ll --use-raw -v 2 "$opt_level" --top-fname="$name" --compiler=I386_CLANG12 -lm --simulate --simulator=VERILATOR --verilator-parallel --libm-std-rounding --generate-interface=INFER --interface-xml-filename=interfaces.xml "$device_name")
    # Check if the option "--vivado" is specified
    if option_present "--vivado" "$@"; then
      # If "--vivado" is present, add the "--evaluation" option to the invocation of BAMBU
      command+=(--parallel-backend --evaluation)
    fi
    run_command "${command[@]} |& tee ../panda_log_opt.txt"
    # Move verilator results in parent folder
    cp results.txt ../results_opt.txt
  fi

  cd -
  cd "$path"/synthesis_no_opt

  # Check disabling option
  if ! option_present "--no-unopt" "$@"; then
    command=("$BAMBU" ../test.c -v 2 "$opt_level" --top-fname="$name" --compiler=I386_CLANG12 -lm --simulate --simulator=VERILATOR --verilator-parallel --libm-std-rounding "$device_name")
    # Check if the option "--vivado" is specified
    if option_present "--vivado" "$@"; then
      # If "--vivado" is present, add the "--evaluation" option to the invocation of BAMBU
      command+=(--parallel-backend --evaluation)
    fi
    run_command "${command[@]} |& tee ../panda_log.txt"
    # Move verilator results in parent folder
    cp results.txt ../results.txt
  fi


  # Change back to the original directory before the next iteration
  cd -
done

echo "
           _ _       _                  _ 
     /\   | | |     | |                | |
    /  \  | | |    _| | ___  _  _    _ | |
   / /\ \ | | |  / _\` |/ _ \| '_ \ / _ \ |
  / ____ \| | | | (_| | (_) | | | |  __/_|
 /_/    \_\_|_|  \__,_|\___/|_| |_|\___(_)"