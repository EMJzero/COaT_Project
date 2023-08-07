import random as rnd
import sys

template = "\n\t<testbench\n\tPd17=\"n_\"\n\tPd18=\"{w_}\"\n\tPd19=\"{s_}\"\n\tPd20=\"{o_}\"\n\tn=\"n_\"\n\tw=\"{w_}\"\n\ts=\"{s_}\"\n\to=\"{o_}\"/>"

size_code_constant = 8
how_many_testbenches = 2

# upper bound is included
def gen(min_, max_, how_many):
    return [min_ + (rnd.random() * (max_ - min_)) for i in range(how_many)]

def to_string(values):
    res = ""
    for value in values:
        res += str(value)[:6] + ", "

    return res[:-2]

def generate_values():
    n = 32
    w = [0 for i in range(size_code_constant)]
    s = gen(0, 1, n*size_code_constant)
    o = map(lambda x : int(x)%2, gen(0, 100, n))

    return template.replace("n_", str(n)).replace("w_", to_string(w)).replace("s_", to_string(s)).replace("o_", to_string(o))

result = "<?xml version=\"1.0\"?>\n<function>"

for i in range(how_many_testbenches):
    result += generate_values()

result += "\n</function>"

result = result.replace("\t", "    ")

print(result)
