import random as rnd
import sys

template = "\n\t<testbench\n\tPd98=\"{x__}\"\n\tPd99=\"{y__}\"\n\tPd100=\"num_\"\n\tPd101=\"{resx_}\"\n\tPd102=\"{resy_}\"\n\tx_f=\"{x__}\"\n\ty_f=\"{y__}\"\n\tnumPoints=\"num_\"\n\tres_x=\"{resx_}\"\n\tres_y=\"{resy_}\"/>"

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
    x = gen(-128, 128)
    y = gen(-128, 128)
    resx = [0 for i in range(len_code_constant)]
    resy = [0 for i in range(len_code_constant)]

    return template.replace("x__", to_string(x)).replace("y__", to_string(y)).replace("num_", str(len_code_constant)).replace("resx_", to_string(resx)).replace("resy_", to_string(resy))

result = "<?xml version=\"1.0\"?>\n<function>"

for i in range(how_many_testbenches):
    result += generate_values()

result += "\n</function>"

result = result.replace("\t", "    ")

print(result)
