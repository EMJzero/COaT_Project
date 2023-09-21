import matplotlib.pyplot as plt
import pandas as pd
from sklearn.preprocessing import MinMaxScaler
import os
import re

def extract_number(text):
    # Regular expression pattern to match the number
    pattern = r":\s*([-+]?\d*\.\d+|\d+)"
    
    # Search for the pattern in the input text
    match = re.search(pattern, text)
    
    if match:
        number_str = match.group(1)
        # Try converting to float first, if it fails, convert to int
        try:
            number = float(number_str)
        except ValueError:
            number = int(number_str)
        return number
    else:
        # Return None if no number is found
        return None

def process_files(filename, data):
    result = []

    # Get the current working directory
    current_path = os.getcwd()

    # Function to process each file and update the result array
    def process_file(file_path):
        with open(file_path, 'r') as file:
            lines = file.readlines()
            current_dict = {}
            current_dict["Test"] = file_path[-56:]
            for line in lines:
                for datum in data:
                    if (line.strip()).startswith(datum):
                        current_dict[datum] = extract_number(line.strip())
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

filename_to_find_opt = "panda_log_opt.txt"
filename_to_find_no_opt = "panda_log.txt"

strings_to_search = ["Average execution", "Luts", "Time", "Power", "Registers", "DSPs", "BRAMs", "Design slack", "Frequency", "AreaxTime"]

result_opt = process_files(filename_to_find_opt, strings_to_search)
result_no_opt = process_files(filename_to_find_no_opt, strings_to_search)

# PLOT TIME!

if len(result_opt) != len(result_no_opt):
    raise Exception("Results length missmatch between optimized and not...")
results = []

# Define custom y-axis scales for each variable
y_bounds = {
    'Time': [-1, 1],
    #'Average execution': [-1, 1],
    'Luts': [-1, 1],
    'Power': [-1, 1],
    'Registers': [-1, 1],
    #'DSPs': [-1, 1],
    #'BRAMs': [-1, 1],
    'AreaxTime': [-1, 1]
}

def update_maxmin(key, val):
    if val < y_bounds[key][0]:
        y_bounds[key][0] = val
    elif val > y_bounds[key][1]:
        y_bounds[key][1] = val

for i in range(len(result_opt)):
    #results.append(result_opt[i])
    #results.append(result_no_opt[i])
    #normalize optimized values w.r.t. optimized ones
    if '16x16' in result_opt[i]['Test'] or '256x256' in result_opt[i]['Test'] or 'Normalize' in result_opt[i]['Test'] or 'bench' in result_opt[i]['Test']:
        continue
    result_opt[i]['Time'] = result_opt[i]['Time'] / result_no_opt[i]['Time']
    update_maxmin('Time', result_opt[i]['Time'])
    result_opt[i].pop('Average execution')
    result_opt[i]['Luts'] = result_opt[i]['Luts'] / result_no_opt[i]['Luts']
    update_maxmin('Luts', result_opt[i]['Luts'])
    result_opt[i]['Power'] = result_opt[i]['Power'] / result_no_opt[i]['Power']
    update_maxmin('Power', result_opt[i]['Power'])
    result_opt[i]['Registers'] = result_opt[i]['Registers'] / result_no_opt[i]['Registers'] if result_no_opt[i]['Registers'] != 0 else 1
    update_maxmin('Registers', result_opt[i]['Registers'])
    #result_opt[i]['DSPs'] = result_opt[i]['DSPs'] / result_no_opt[i]['DSPs'] if result_no_opt[i]['DSPs'] != 0 else 1
    #update_maxmin('DSPs', result_opt[i]['DSPs'])
    result_opt[i].pop('DSPs')
    #result_opt[i]['BRAMs'] = result_opt[i]['BRAMs'] / result_no_opt[i]['BRAMs'] if result_no_opt[i]['BRAMs'] != 0 else 1
    #update_maxmin('BRAMs', result_opt[i]['BRAMs'])
    result_opt[i].pop('BRAMs')
    result_opt[i].pop('Design slack')
    result_opt[i].pop('Frequency')
    result_opt[i]['AreaxTime'] = result_opt[i]['AreaxTime'] / result_no_opt[i]['AreaxTime']
    update_maxmin('AreaxTime', result_opt[i]['AreaxTime'])
    results.append(result_opt[i])

for res in results:
    name_tokens = res['Test'].split('\\')
    name = name_tokens[-2]
    if name_tokens[-3] != 'Tests':
        name = name_tokens[-3] + '\n(' + name + ')'
    #if 'opt' in name_tokens[-1]:
    #    name += ' - OPT'
    name = name.replace('Compute', '')
    name = name.replace('FromPanda_mm_float_inside_opt', 'MatrixProduct')
    res['Test'] = name

df = pd.DataFrame(results)

test_names = df['Test']

df = df.drop(columns=['Test'])

plt.figure(figsize=(28/2, 21/2))

plt.axhline(y=1, color='red', linestyle='--', linewidth=2)

marker_styles = ['o', '*', 'X', 'D', 's', '^', 'D', 'v', '1', '2', 'P']

for i, row in df.iterrows():
    marker_style = marker_styles[i % len(marker_styles)]
    plt.plot(range(len(df.columns)), row, marker_style + '-', label=test_names[i])

plt.xticks(range(len(df.columns)), df.columns, rotation=0)
plt.xlabel('Objectives')
plt.ylabel('Optimized / Unoptimized')

plt.text(-0.35, 1.025, "worst", color='red', fontsize=12)
plt.text(-0.35, 0.94, "better", color='red', fontsize=12)

plt.legend(title='Test Name', bbox_to_anchor=(1.02, 0.5), loc='center left')

plt.xlim(-0.5, len(df.columns) - 0.8)

#plt.title('Parallel Coordinates Plot for Test Results')
plt.grid(True)
plt.tight_layout()
plt.show()
