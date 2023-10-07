import random as rnd
import sys

template = "\n\t<testbench\n\tPd5=\"{arr1_}\"\n\tPd6=\"{arr2_}\"\n\tPd7=\"{arr3_}\"\n\tPd8=\"{res_}\"\n\tv=\"{arr1_}\"\n\tw=\"{arr2_}\"\n\te=\"{arr3_}\"\n\tres=\"{res_}\"/>"

len_code_constant = 100
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
    arr1 = map(lambda x : int(x*268435456.0), gen(-5, 0))
    arr2 = map(lambda x : int(x*2147483648.0), gen(0, 1))
    arr3 = map(lambda x : int(x*268435456.0), gen(3.8, 7.8))
    res = [0 for _ in range(len_code_constant)]

    return template.replace("arr1_", to_string(arr1)).replace("arr2_", to_string(arr2)).replace("arr3_", to_string(arr3)).replace("res_", to_string(res))

result = "<?xml version=\"1.0\"?>\n<function>"

for i in range(how_many_testbenches):
    result += generate_values()

result += "\n</function>"

result = result.replace("\t", "    ")

print(result)
