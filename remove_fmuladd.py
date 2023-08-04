import os
import re
import sys


def replace_line_f32(match):
    s, A, B, C, D = match.groups()[:5]
    return f"{s}%temp{A} = fmul float %{B}, %{C}\n{s}%{A} = fadd float %temp{A}, %{D}"

def replace_line_f64(match):
    s, A, B, C, D = match.groups()[:5]
    return f"{s}%temp{A} = fmul double %{B}, %{C}\n{s}%{A} = fadd double %temp{A}, %{D}"

def process_file(file_path):
    with open(file_path, "r") as f:
        lines = f.readlines()

    pattern_f32 = r"(\s*)%(\w+)\s*=\s*call\s*float\s*@llvm\.fmuladd\.f32\(float\s*%(\w+),\s*float\s*%(\w+),\s*float\s*%(\w+)\)(.*)"
    pattern_f64 = r"(\s*)%(\w+)\s*=\s*call\s*double\s*@llvm\.fmuladd\.f64\(double\s*%(\w+),\s*double\s*%(\w+),\s*double\s*%(\w+)\)(.*)"
   
    modified_lines = []
    for line in lines:
        modified_line = re.sub(pattern_f32, replace_line_f32, line)
        modified_line = re.sub(pattern_f64, replace_line_f64, modified_line)
        if modified_line != line:
            print(f"Modified this:\n{line}Into this:\n{modified_line}")
            modified_lines.append(";" + line)
        modified_lines.append(modified_line)

    with open(file_path, "w") as f:
        f.writelines(modified_lines)


if len(sys.argv) != 2:
    print("Usage: python script.py <path_to_ll_file>")
    sys.exit(1)

file_path = sys.argv[1]

if file_path[-3:] != ".ll":
    print("Error: The given path is not that of a \".ll\" file.")
if not os.path.isfile(file_path):
    print("Error: The specified file does not exist.")
    sys.exit(1)

process_file(file_path)