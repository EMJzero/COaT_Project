import random as rnd
import sys

template = "\n\t<testbench\n\tPd5=\"{in_v_f_}\"\n\tPd6=\"{out_v_f_}\"\n\tin_v_f=\"{in_v_f_}\"\n\tout_v_f=\"{out_v_f_}\"/>"

len_code_constant = 8
how_many_testbenches = 64

# upper bound is included
def gen(min_, max_):
    return [min_ + (rnd.random() * (max_ - min_)) for i in range(len_code_constant)]

def to_string(values):
    res = ""
    for value in values:
        res += str(value) + ", "

    return res[:-2]

def generate_values():
    in_v = gen(0, 256)
    out_v = [0 for i in range(len_code_constant)]

    return template.replace("in_v_f_", to_string(in_v)).replace("out_v_f_", to_string(out_v))

result = "<?xml version=\"1.0\"?>\n<function>"

for i in range(how_many_testbenches):
    result += generate_values()

result += "\n</function>"

result = result.replace("\t", "    ")

print(result)
