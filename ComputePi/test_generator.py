import random as rnd
import sys

template = "\n\t<testbench\n\tPd36=\"iters_\"\n\tPd37=\"res_\"\n\titers=\"iters_\"\n\tres=\"res_\"/>"

# upper bound is included
def gen(max_val):
    value = 2
    while value < max_val:
        yield value, 0
        value *= 2

def generate_values(max_val):
    g = gen(max_val)
    while True:
        try:
            iters, result = next(g)
            yield template.replace("iters_", str(iters)).replace("res_", str(result))
        except StopIteration:
            return ""

result = "<?xml version=\"1.0\"?>\n<function>"

for entry in generate_values(2**20):
    result += entry

result += "\n</function>"

result = result.replace("\t", "    ")

print(result)
