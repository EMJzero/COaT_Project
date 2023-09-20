import random as rnd
import sys

template_old = "\n\t<testbench\n\tPd5=\"{in_a}\"\n\tPd6=\"{in_b}\"\n\tPd7=\"{out_c}\"\n\tPd8=\"len\"\n\tPd9=\"len\"\n\tPd10=\"len\"/>"
template_old_too = "\n\t<testbench\n\tPd5=\"{in_a}\"\n\tPd6=\"{in_b}\"\n\tPd7=\"{out_c}\"/>"
template = "\n\t<testbench\n\tPd5=\"{in_a_f_}\"\n\tPd6=\"{in_b_f_}\"\n\tPd7=\"{out_c_f_}\"\n\tin_a_f=\"{in_a_f_}\"\n\tin_b_f=\"{in_b_f_}\"\n\tout_c_f=\"{out_c_f_}\"/>"

size = 64

# upper bound is included
def gen(length, upper_bound):
    in_a = []
    in_b = []
    out_c = []

    for i in range(length):
        in_a.append(rnd.randint(0, upper_bound))
        in_b.append(rnd.randint(0, upper_bound))
        out_c.append(0)

    return in_a, in_b, out_c

def to_string(values):
    res = ""
    for value in values:
        res += str(value) + ", "

    return res[:-2]

def generate_values(length, upper_bound):
    in_a, in_b, out_c = gen(length, upper_bound)
    return template.replace("in_a_f_", to_string(in_a)).replace("in_b_f_", to_string(in_b)).replace("out_c_f_", to_string(out_c)).replace("len", str(length))

result = "<?xml version=\"1.0\"?>\n<function>"

for i in [size*size for i in range(8)]:
    result += generate_values(i, 255)

result += "\n</function>"

result = result.replace("\t", "    ")

print(result)

# Usefull thing:

#m = [[i+1 for i in range(16)] for i in range(16)]
#for row in m:
#	for el in row:
#		print(el, end=",")
#	print("")