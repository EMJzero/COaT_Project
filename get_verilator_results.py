import os
import re

results_regex = r'(\d)\s+(\d+)'

results = {}

def to_string(values):
    counter = {}
    for value in values:
        if not counter.get(value):
            counter[value] = 1
        else:
            counter[value] += 1

    res = ""
    for key in counter.keys():
        res +=  f"{key}[{counter[key]}], "

    return res[:-2]

def check_file_with_regex(file_path, regex_pattern):
    if not file_path.endswith("results.txt") and not file_path.endswith("results_opt.txt"):
        return
        
    ccs = []

    with open(file_path, 'r') as file:
        for line in file:
            line = line.strip()
            regex_match = re.search(regex_pattern, line)
            if regex_match:
                ccs.append(regex_match.group(2))

    if len(ccs) != 0:
        print("Processed file:", file_path)
        results[file_path.split("/")[-2] + (" (TAFFO)" if file_path.split("/")[-1].find("opt") != -1 else "")] = to_string(ccs)

def process_directory(directory_path):
    for root, _, files in os.walk(directory_path):
        for file in files:
            file_path = os.path.join(root, file)
            check_file_with_regex(file_path, results_regex)

def main():
    current_dir = os.getcwd()
    for root, dirs, files in os.walk(current_dir):
        for dir in dirs:
            dir_path = os.path.join(root, dir)
            if dir_path != current_dir:
                process_directory(dir_path)

if __name__ == '__main__':
    main()
    print("\n\nVerilator results (clock_cycles[occurrencies]):")
    for test, ccs in results.items():
        print(f"{test:<40}:\t{str(ccs)}")