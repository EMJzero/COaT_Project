import random as rnd
import sys

template = "\n\t<testbench\n\tPd58=\"{arr_}\"\n\tarr=\"{arr_}\"/>"

len_code_constant = 200
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
    arr1 = gen(1,10)
    arr2 = gen(0, 360)

    arr = []
    for d_ in zip(arr1, arr2):
        arr.append(d_[0])
        arr.append(d_[1])
    return template.replace("arr_", to_string(arr))

result = "<?xml version=\"1.0\"?>\n<function>"

for i in range(how_many_testbenches):
    result += generate_values()

result += "\n</function>"

result = result.replace("\t", "    ")

print(result)
