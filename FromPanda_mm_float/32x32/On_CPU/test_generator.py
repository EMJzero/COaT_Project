import random as rnd
import sys

template = "static float in_a_origin[] = {in_a_f_};\nstatic float in_b_origin[] = {in_b_f_};"

size = 32

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
    return template.replace("in_a_f_", to_string(in_a)).replace("in_b_f_", to_string(in_b))

print(generate_values(size*size, 255))

# Usefull thing:

#m = [[i+1 for i in range(16)] for i in range(16)]
#for row in m:
#	for el in row:
#		print(el, end=",")
#	print("")