import random as rnd
import math
import sys

template = "\n\t<testbench\n\tPd124=\"{arr_}\"\n\tarr=\"{arr_}\"/>"

# upper bound is included
def gen():
    return [rnd.uniform(0.0, 1.0) * math.pi / 2.0 for i in range(400)]

def to_string(values):
    res = ""
    for value in values:
        res += str(value)[:6] + ", "

    return res[:-2]

def generate_values():
    arr = gen()

    return template.replace("arr_", to_string(arr))

result = "<?xml version=\"1.0\"?>\n<function>"

for i in range(1):
    result += generate_values()

result += "\n</function>"

result = result.replace("\t", "    ")

print(result)
