import random as rnd
import math
import sys

template = "\n\t<testbench\n\tPd5=\"n_f\"\n\tPd6=\"result\"/>"

# upper bound is included
def gen():
    return (rnd.random()*math.pi*2)-math.pi, 0

def generate_values():
    n_f, result = gen()
    return template.replace("n_f", str(n_f)).replace("result", str(result))

result = "<?xml version=\"1.0\"?>\n<function>"

for i in range(256):
    result += generate_values()

result += "\n</function>"

result = result.replace("\t", "    ")

print(result)
