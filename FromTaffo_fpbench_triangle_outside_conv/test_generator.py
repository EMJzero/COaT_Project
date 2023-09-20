import random as rnd
import sys

template = "\n\t<testbench\n\tPd17=\"{arr_}\"\n\tPd18=\"{res_}\"\n\tarr=\"{arr_}\"\n\tres=\"{res_}\"/>"

len_code_constant = 100
how_many_testbenches = 2

def taffo_conversion(value):
    return int(value*134217728)

# upper bound is included
def gen(min_, max_):
    return [taffo_conversion(min_ + (rnd.random() * (max_ - min_))) for i in range(len_code_constant)]

def to_string(values):
    res = ""
    for value in values:
        res += str(value) + ", "

    return res[:-2]

def generate_values():
    arr1 = gen(-9, 9)
    arr2 = gen(-9, 9)
    arr3 = gen(-9, 9)
    res = [0 for i in range(len_code_constant)]

    arr = []
    for d_ in zip(arr1, arr2, arr3):
        arr.append(d_[0])
        arr.append(d_[1])
        arr.append(d_[2])
    return template.replace("arr_", to_string(arr)).replace("res_", to_string(res))

result = "<?xml version=\"1.0\"?>\n<function>"

for i in range(how_many_testbenches):
    result += generate_values()

result += "\n</function>"

result = result.replace("\t", "    ")

print(result)
