import os
import re

flipflops_regex = r'Total number of flip-flops in function \w+: \d+'

results = {}

def check_file_with_regex(file_path, regex_pattern):
    if file_path[-4:] != ".txt":
        return
        
    #print("Processing file:", file_path)

    counts = []

    with open(file_path, 'r') as file:
        for line in file:
            line = line.strip()  # Remove leading/trailing whitespace
            if re.search(regex_pattern, line):
                print("Match:", line)
                counts.append(int(line.split(" ")[-1]))

    if sum(counts) != 0:
        results[file_path.split("/")[-2] + (" (TAFFO)" if file_path.split("/")[-1].find("opt") != -1 else "")] = sum(counts)

def process_directory(directory_path):
    for root, _, files in os.walk(directory_path):
        for file in files:
            file_path = os.path.join(root, file)
            check_file_with_regex(file_path, flipflops_regex)

def main():
    current_dir = os.getcwd()
    for root, dirs, files in os.walk(current_dir):
        for dir in dirs:
            dir_path = os.path.join(root, dir)
            if dir_path != current_dir:
                process_directory(dir_path)

if __name__ == '__main__':
    main()
    print("\n\nFlip-Flop counts:")
    for test, count in results.items():
        print(f"{test:<40}:\t{str(count)}")