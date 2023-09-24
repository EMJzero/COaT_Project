import random as rnd
import sys

template = "static float x_origin[] = {x__};\nstatic float y_origin[] = {y__};"

len_code_constant = 100

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

print(generate_values())
