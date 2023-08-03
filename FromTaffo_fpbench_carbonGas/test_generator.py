import random as rnd
import sys

template = "\n\t<testbench\n\tPd5=\"{arr_}\"\n\tPd6=\"{res_}\"\n\tarr=\"{arr_}\"\n\tres=\"{res_}\"/>"

len_code_constant = 100
how_many_testbenches = 2

# upper bound is included
def gen(min_, max_):
    return [min_ + (rnd.random() * (max_ - min_)) for i in range(len_code_constant)], [0 for i in range(len_code_constant)]

def to_string(values):
    res = ""
    for value in values:
        if value < 0.001 and value != 0:
            value = 0.001
        res += str(value)[:5] + ", "

    return res[:-2]

def generate_values():
    arr, res = gen(0, 1)

    return template.replace("arr_", to_string(arr)).replace("res_", to_string(res))

result = "<?xml version=\"1.0\"?>\n<function>"

for i in range(how_many_testbenches):
    result += generate_values()

result += "\n</function>"

result = result.replace("\t", "    ")

print(result)
