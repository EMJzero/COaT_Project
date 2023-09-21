import os
import re

FULLPRINT = False
COMPACTPRINT = False
BETTERPRINT = True

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
            current_dict["Test"] = file_path[-80:]
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

if FULLPRINT:
    print("----> Full print:")

    print(f"{'Test':<60}", end="")
    for string in strings_to_search:
        print(f"{string:<20}", end="")
    print("")

    count = 0
    for res in [val for pair in zip(result_opt, result_no_opt) for val in pair]:
        print(f"{res['Test']:<60}", end="")
        for string in strings_to_search:
            if string in res:
                print(f"{res[string]:<20}", end="")
            else:
                print(f"{'error':<20}", end="")
        count += 1
        if count % 2 == 0:
            print("")
        print("")

if COMPACTPRINT:

    print("\n\n----> Compact print:")

    for res_op, res_no_op in zip(result_opt, result_no_opt):
        print(f"{res_op['Test'][:-18]} ", end="")

        for string in strings_to_search:
            if string in res_op:
                print(f"{res_op[string]:.8f} ", end="")
            else:
                print(f"{'error'} ", end="")

            if string in res_no_op:
                print(f"{res_no_op[string]:.8f} ", end="")
            else:
                print(f"{'error'} ", end="")

        print("")

if BETTERPRINT:

    print("\n\n----> Better print:")

    def fix_name(res):
        name_tokens = res['Test'].split('\\')
        name = name_tokens[-2]
        if name_tokens[-3] != 'Tests':
            name = name_tokens[-3] + '(' + name + ')'
        if 'opt' in name_tokens[-1]:
            name += ' - OPT'
        name = name.replace('Compute', '')
        name = name.replace('FromPanda_mm_float_inside_opt', 'MatrixProduct')
        res['Test'] = name

    for res in result_opt:
        fix_name(res)

    for res in result_no_opt:
        fix_name(res)

    #def print_dictionary(dictionary):
    #    formatted_items = [f"{key}: {value}" for key, value in dictionary.items()]
    #    formatted_string = ", ".join(formatted_items)
    #    print(formatted_string)

    def print_dictionaries(dic1, dic2):
        formatted_items = [f"{key}: {dic1[key]} -> {dic2[key]}" if key != 'Test' else f"Test: {dic2[key]}" for key in dic1.keys()]
        formatted_string = ", ".join(formatted_items)
        print(formatted_string)

    if len(result_no_opt) != len(result_opt):
        raise Exception("Length missmatch between the two result arrays...")

    for i in range(len(result_opt)):
        #print_dictionary(result_opt[i])
        #print_dictionary(result_no_opt[i])
        print_dictionaries(result_opt[i], result_no_opt[i])

#for res in result_opt:
#    for i in res.items():
#        print(i)
#print(result_no_opt)
