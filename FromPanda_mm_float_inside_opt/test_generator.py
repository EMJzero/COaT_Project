import random as rnd
import sys

template_old = "\n\t<testbench\n\tPd5=\"{in_a}\"\n\tPd6=\"{in_b}\"\n\tPd7=\"{out_c}\"\n\tPd8=\"len\"\n\tPd9=\"len\"\n\tPd10=\"len\"/>"
template = "\n\t<testbench\n\tPd5=\"{in_a}\"\n\tPd6=\"{in_b}\"\n\tPd7=\"{out_c}\"/>"

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
    return template.replace("in_a", to_string(in_a)).replace("in_b", to_string(in_b)).replace("out_c", to_string(out_c)).replace("len", str(length))

size = 4

if len(sys.argv) != 2:
    print(f"Missing command-line argument, defaulting to {size}", file=sys.stderr)

try:
    size = int(sys.argv[1])
except ValueError:
    print(f"Invalind command-line argument, defaulting to {size}", file=sys.stderr)

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