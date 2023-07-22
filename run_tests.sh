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
  echo "Error: Environment variable BAMBU is not set."
  exit 1
fi

# List of paths

path_names=(
  "ComputeConvexHull/max100pts,computeConvexHull"
  "ComputeConvexHull/max1000pts,computeConvexHull"
  "ComputePi,compute_pi"
  "ComputeSinCos,manual_cos"
  "ComputeSqrt,NRsqrt"
  "FromPanda_mm_float_inside_opt/16x16,mm"
  "FromPanda_mm_float_inside_opt/32x32,mm"
  "FromPanda_mm_float_inside_opt/64x64,mm"
  "FromPanda_mm_float_inside_opt/128x128,mm"
  "FromPanda_mm_float_inside_opt/256x256,mm"
  "FromTaffo_axbench_inversek2j,test"
  "FromTaffo_fpbench_CX,test"
  "FromTaffo_fpbench_CY,test"
  "FromTaffo_fpbench_doppler,test"
  "FromTaffo_fpbench_leadLag,test"
  "FromTaffo_fpbench_triangle,test"
  "FromTaffo_fpbench_turbine1,test"
  ) 

# Function to check if an option is present in the command-line arguments
option_present() {
  local option="$1"
  shift
  for arg in "$@"; do
    if [[ "$arg" == "$option" ]]; then
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

# Parse command-line arguments to get the --use option value
use_option="none"
for arg in "$@"; do
  if [[ "$arg" == "--use="* ]]; then
    use_option="${arg#*=}"
    break
  fi
done

# If the --use option is not specified, print an error message and exit
if [ "$use_option" == "none" ]; then
  echo "The --use option must be specified as one of:
  --use=all
  --use=<num>(,<num>)*
Where <num> is chosen from:
  0) ComputeConvexHull/max100pts,computeConvexHull
  1) ComputeConvexHull/max1000pts,computeConvexHull
  2) ComputePi,compute_pi
  3) ComputeSinCos,manual_cos
  4) ComputeSqrt,NRsqrt
  5) FromPanda_mm_float_inside_opt/16x16,mm
  6) FromPanda_mm_float_inside_opt/32x32,mm
  7) FromPanda_mm_float_inside_opt/64x64,mm
  8) FromPanda_mm_float_inside_opt/128x128,mm
  9) FromPanda_mm_float_inside_opt/256x256,mm
  10) FromTaffo_axbench_inversek2j,test
  11) FromTaffo_fpbench_CX,test
  12) FromTaffo_fpbench_CY,test
  13) FromTaffo_fpbench_doppler,test
  14) FromTaffo_fpbench_leadLag,test
  15) FromTaffo_fpbench_triangle,test
  16) FromTaffo_fpbench_turbine1,test
Use --help for available options."
  exit 1
fi

# Get the tuples to use based on the --use option
tuples_to_use=$(get_tuples_to_use "$use_option")

# Iterate through the list of tuples (path, name)
for tuple in "${tuples_to_use[@]}"; do
  # Split the tuple into path and name using comma as the delimiter
  IFS=',' read -r path name <<< "$tuple"

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
      "$TAFFO" -fno-discard-value-names -S -emit-llvm -o test.ll test.c
    else
      # If TAFFO does not exist, run the command "taffo"
      taffo -fno-discard-value-names -S -emit-llvm -o test.ll test.c
    fi
  fi

  # Check if the option "--device-name=<name>" is specified and extract the device name
  device_name="--device-name=xc7vx690t-3ffg1930-VVD"
  if option_present "--device-name=" "$@"; then
    for arg in "$@"; do
      if [[ "$arg" == --device-name=* ]]; then
        device_name="${arg#*=}"
        break
      fi
    done
  fi

  # Prepare output directories
  mkdir synthesis_no_opt
  mkdir synthesis_with_opt
  cp test.xml ./synthesis_no_opt
  cp test.xml ./synthesis_with_opt

  cd -
  cd "$path"/synthesis_with_opt

  # Check disabling option
  if ! option_present "--no-opt" "$@"; then
    # Check if the option "--vivado" is specified
    if option_present "--vivado" "$@"; then
      # If "--vivado" is present, add the "--evaluation" option to the invocation of BAMBU
      "$BAMBU" ../test.ll --use-raw -v 2 --top-fname="$name" --compiler=I386_CLANG12 --simulate --simulator=VERILATOR --verilator-parallel --parallel-backend --evaluation "$device_name" |& tee ../panda_log_opt.txt 
    else
      # If "--vivado" is not present, invoke BAMBU without the "--evaluation" option
      "$BAMBU" ../test.ll --use-raw -v 2 --top-fname="$name" --compiler=I386_CLANG12 --simulate --simulator=VERILATOR --verilator-parallel "$device_name" |& tee ../panda_log_opt.txt 
    fi
  fi

  cd -
  cd "$path"/synthesis_no_opt

  # Check disabling option
  if ! option_present "--no-unopt" "$@"; then
    # Check if the option "--vivado" is specified
    if option_present "--vivado" "$@"; then
      # If "--vivado" is present, add the "--evaluation" option to the invocation of BAMBU
      "$BAMBU" ../test.c -v 2 --top-fname="$name" --compiler=I386_CLANG12 --simulate --simulator=VERILATOR --verilator-parallel --parallel-backend --evaluation "$device_name" |& tee ../panda_log.txt 
    else
      # If "--vivado" is not present, invoke BAMBU without the "--evaluation" option
      "$BAMBU" ../test.c -v 2 --top-fname="$name" --compiler=I386_CLANG12 --simulate --simulator=VERILATOR --verilator-parallel "$device_name" |& tee ../panda_log.txt 
    fi
  fi

  # Change back to the original directory before the next iteration
  cd -
done

echo "all done!"