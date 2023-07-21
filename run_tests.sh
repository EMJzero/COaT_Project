#!/bin/bash

# Check if the environment variable BAMBU exists
if [ -z "$BAMBU" ]; then
  echo "Error: Environment variable BAMBU is not set."
  exit 1
fi

# List of paths

# THIS IS TEMPORARY, I WILL ADD TESTS HERE AS I WILL
# BE ABLE TO MAKE SURE THEY WORK

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

# Iterate through the list of tuples (path, name)
for tuple in "${path_names[@]}"; do
  # Split the tuple into path and name using comma as the delimiter
  IFS=',' read -r path name <<< "$tuple"

  # Change directory to the current path being iterated over
  cd "$path"

  # Check if the option "--gen" is specified and run test_generator.py
  if option_present "--gen" "$@"; then
    python3 test_generator.py > test.xml
  fi

  # Check if the environment variable TAFFO exists
  if [ -n "$TAFFO" ]; then
    # If TAFFO exists, run the executable specified in TAFFO
    "$TAFFO" -fno-discard-value-names -S -emit-llvm -o test.ll test.c
  else
    # If TAFFO does not exist, run the command "taffo"
    taffo -fno-discard-value-names -S -emit-llvm -o test.ll test.c
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
      "$BAMBU" ../test.ll --use-raw -v 2 --top-fname="$name" --compiler=I386_CLANG12 --simulate --simulator=VERILATOR --evaluation "$device_name" |& tee ../panda_log_opt.txt 
    else
      # If "--vivado" is not present, invoke BAMBU without the "--evaluation" option
      "$BAMBU" ../test.ll --use-raw -v 2 --top-fname="$name" --compiler=I386_CLANG12 --simulate --simulator=VERILATOR "$device_name" |& tee ../panda_log_opt.txt 
    fi
  fi

  cd -
  cd "$path"/synthesis_no_opt

  # Check disabling option
  if ! option_present "--no-unopt" "$@"; then
    # Check if the option "--vivado" is specified
    if option_present "--vivado" "$@"; then
      # If "--vivado" is present, add the "--evaluation" option to the invocation of BAMBU
      "$BAMBU" ../test.c -v 2 --top-fname="$name" --compiler=I386_CLANG12 --simulate --simulator=VERILATOR --evaluation "$device_name" |& tee ../panda_log.txt 
    else
      # If "--vivado" is not present, invoke BAMBU without the "--evaluation" option
      "$BAMBU" ../test.c -v 2 --top-fname="$name" --compiler=I386_CLANG12 --simulate --simulator=VERILATOR "$device_name" |& tee ../panda_log.txt 
    fi
  fi

  # Change back to the original directory before the next iteration
  cd -
done

echo "all done!"