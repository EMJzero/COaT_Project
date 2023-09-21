import os
import re

def extract_name_num(text):
    # Regular expression pattern to match the number
    pattern = r"Computed\serror\sfor\starget\s(\w+):\s(\d+.\d+e[\+\-]\d+)"
    
    # Search for the pattern in the input text
    match = re.search(pattern, text)
    
    if match:
        return (match.group(1), match.group(2))
    else:
        return None

def process_files(filename):
    result = []

    # Get the current working directory
    current_path = os.getcwd()

    # Function to process each file and update the result array
    def process_file(file_path):
        with open(file_path, 'r') as file:
            lines = file.readlines()
            current_dict = {}
            current_dict["Test"] = file_path[-80:]
            for line in lines:
                res = extract_name_num(line.strip())
                if res != None:
                    current_dict[res[0]] = res[1]
            if current_dict and len(current_dict.keys()) > 1:
                result.append(current_dict)

    # Walk through all directories and subdirectories
    for root, _, files in os.walk(current_path):
        for file in files:
            if file == filename:
                file_path = os.path.join(root, file)
                if "_outside_conv" not in file_path:
                    process_file(file_path)

    return result

filename_to_find_opt = "taffo_err_log.txt"

results = process_files(filename_to_find_opt)

print("\n\n----> Errors:")

def fix_name(res):
    name_tokens = res['Test'].split('\\')
    name = name_tokens[-2]
    if name_tokens[-3] != 'Tests':
        name = name_tokens[-3] + '(' + name + ')'
    name = name.replace('Compute', '')
    name = name.replace('FromPanda_mm_float_inside_opt', 'MatrixProduct')
    res['Test'] = name

for res in results:
    fix_name(res)

def print_dictionary(dictionary):
    formatted_items = [f"{key}: {value}" for key, value in dictionary.items()]
    formatted_string = ", ".join(formatted_items)
    print(formatted_string)

for res in results:
    print_dictionary(res)
