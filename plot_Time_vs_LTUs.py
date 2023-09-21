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

def move_element_ahead(array, idx):
    if 0 <= idx < len(array) - 4:
        element = array.pop(idx)
        new_idx = idx + 4 if idx + 4 < len(array) else len(array)
        array.insert(new_idx, element)

# Let us fix Windows's wrong ordering of files...
for i in range(len(result_opt)):
    if '128x128' in result_opt[i]['Test']:
        move_element_ahead(result_opt, i)
        move_element_ahead(result_no_opt, i)
        break
for i in range(len(result_opt)):    
    if '256x256' in result_opt[i]['Test']:
        move_element_ahead(result_opt, i)
        move_element_ahead(result_no_opt, i)
        break
        
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
    # UNCOMMENT THIS FOR PLOT 1
    if '16x16' in result_opt[i]['Test'] or '256x256' in result_opt[i]['Test'] or 'Normalize' in result_opt[i]['Test'] or 'axbench' in result_opt[i]['Test'] or 'carbon' in result_opt[i]['Test'] or 'turbine' in result_opt[i]['Test']:
        continue
    # UNCOMMENT THIS FOR PLOT 2
    #if 'fpbench' not in result_opt[i]['Test'] or 'carbonGas' in result_opt[i]['Test']:
    #    continue
    result_opt[i]['Time'] = result_opt[i]['Time'] / result_no_opt[i]['Time']
    update_maxmin('Time', result_opt[i]['Time'])
    result_opt[i].pop('Average execution')
    result_opt[i]['Luts'] = result_opt[i]['Luts'] / result_no_opt[i]['Luts']
    update_maxmin('Luts', result_opt[i]['Luts'])
    #result_opt[i]['Power'] = result_opt[i]['Power'] / result_no_opt[i]['Power']
    #update_maxmin('Power', result_opt[i]['Power'])
    result_opt[i].pop('Power')
    #result_opt[i]['Registers'] = result_opt[i]['Registers'] / result_no_opt[i]['Registers'] if result_no_opt[i]['Registers'] != 0 else 1
    #update_maxmin('Registers', result_opt[i]['Registers'])
    result_opt[i].pop('Registers')
    #result_opt[i]['DSPs'] = result_opt[i]['DSPs'] / result_no_opt[i]['DSPs'] if result_no_opt[i]['DSPs'] != 0 else 1
    #update_maxmin('DSPs', result_opt[i]['DSPs'])
    result_opt[i].pop('DSPs')
    #result_opt[i]['BRAMs'] = result_opt[i]['BRAMs'] / result_no_opt[i]['BRAMs'] if result_no_opt[i]['BRAMs'] != 0 else 1
    #update_maxmin('BRAMs', result_opt[i]['BRAMs'])
    result_opt[i].pop('BRAMs')
    result_opt[i].pop('Design slack')
    result_opt[i].pop('Frequency')
    #result_opt[i]['AreaxTime'] = result_opt[i]['AreaxTime'] / result_no_opt[i]['AreaxTime']
    #update_maxmin('AreaxTime', result_opt[i]['AreaxTime'])
    result_opt[i].pop('AreaxTime')
    results.append(result_opt[i])

for res in results:
    name_tokens = res['Test'].split('\\')
    name = name_tokens[-2]
    if name_tokens[-3] != 'Tests':
        name = name_tokens[-3] + '(' + name + ')'
    #if 'opt' in name_tokens[-1]:
    #    name += ' - OPT'
    if 'Pi' not in name:
        name = name.replace('Compute', '')
    name = name.replace('FromPanda_mm_float', 'MatrixProduct')
    name = name.replace('FromTaffo_fpbench', 'fpbench')
    res['Test'] = name

def print_current_plot_range():
    x_min, x_max = plt.xlim()
    y_min, y_max = plt.ylim()
    print(f"X Range: ({x_min}, {x_max})")
    print(f"Y Range: ({y_min}, {y_max})")

names = [res['Test'] for res in results]
x = [res['Time'] for res in results]
y = [res['Luts'] for res in results]

plt.figure(figsize=(28/2, 21/2))
scatter = plt.scatter(x, y, c=range(len(results)), cmap='tab10', marker='o', label='Data Points')

above_text = False
for i, name in enumerate(names):
    offset = (0, -20) if above_text or 'instant' in name else (0, 10)
    plt.annotate(
        name,
        (x[i], y[i]),
        textcoords="offset points",
        xytext=offset,
        ha='center',
        fontsize=10,
        color=scatter.to_rgba(i)
    )
    above_text = not above_text
    
plt.axvline(x=1, color='red', linestyle='--', label='Vertical Line (x=1)')

plt.axhline(y=1, color='red', linestyle='--', label='Horizontal Line (y=1)')

plt.plot(1, 1, 'ro', label='Baseline Point (1, 1)')
plt.text(1.01, 1.03, 'worst', fontsize=8, color='red')
plt.text(0.91, 1.03, 'less time', fontsize=8, color='red')
plt.text(1.01, 0.95, 'less LUTs', fontsize=8, color='red')
plt.text(0.94, 0.95, 'better', fontsize=8, color='red')

plt.xlabel('Time (optimized / unoptimized)')
plt.ylabel('LUTs (optimized / unoptimized)')

plt.grid(True)
plt.tight_layout()
print_current_plot_range()
plt.show()
