import random as rnd
import sys

template = "\n\t<testbench\n\tPd5=\"{arr_}\"\n\tPd6=\"{res_}\"\n\tarr=\"{arr_}\"\n\tres=\"{res_}\"/>"

# upper bound is included
def gen(min_, max_):
    length = 2000
    return [min_ + (rnd.random() * (max_ - min_)) for i in range(length)], [0 for i in range(length)]

def to_string(values):
    res = ""
    for value in values:
        res += str(value) + ", "

    return res[:-2]

def generate_values():
    arr, res = gen(0, 1)

    return template.replace("arr_", to_string(arr)).replace("res_", to_string(res))

result = "<?xml version=\"1.0\"?>\n<function>"

for i in range(2):
    result += generate_values()

result += "\n</function>"

result = result.replace("\t", "    ")

print(result)
