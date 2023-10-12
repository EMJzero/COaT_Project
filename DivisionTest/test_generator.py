import random as rnd
import sys

template = "\n\t<testbench\n\tPd5=\"{arr_}\"\n\tPd6=\"{res__}\"\n\tarr=\"{arr_}\"\n\tres_f=\"{res__}\"/>"

len_code_constant = 1024
how_many_testbenches = 2

# upper bound is included
def gen(min_, max_):
    return [min_ + (rnd.random() * (max_ - min_)) for i in range(len_code_constant)]

def to_string(values):
    res = ""
    for value in values:
        res += str(value) + ", "

    return res[:-2]

def generate_values():
    arr1 = gen(-256,256)
    arr2 = gen(256, 256)
    res = [0 for i in range(len_code_constant)]

    arr = []
    for d_ in zip(arr1, arr2):
        arr.append(d_[0])
        arr.append(d_[1])
    return template.replace("arr_", to_string(arr)).replace("res__", to_string(res))

result = "<?xml version=\"1.0\"?>\n<function>"

for i in range(how_many_testbenches):
    result += generate_values()

result += "\n</function>"

result = result.replace("\t", "    ")

print(result)
