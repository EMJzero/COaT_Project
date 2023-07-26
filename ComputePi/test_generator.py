import random as rnd
import sys

template = "\n\t<testbench\n\tPd5=\"iters_\"\n\tPd6=\"res_\"\n\titers=\"iters_\"\n\tres=\"res_\"/>"

iterations_lower_bound = 2**16
iterations_upper_bound = 2**16

# upper and lower bounds are included
def gen(min_val, max_val):
    value = min_val
    while value <= max_val:
        yield value, 0
        value *= 2

def generate_values(min_val, max_val):
    g = gen(min_val, max_val)
    while True:
        try:
            iters, result = next(g)
            yield template.replace("iters_", str(iters)).replace("res_", str(result))
        except StopIteration:
            return ""

result = "<?xml version=\"1.0\"?>\n<function>"

for entry in generate_values(iterations_lower_bound, iterations_upper_bound):
    result += entry

result += "\n</function>"

result = result.replace("\t", "    ")

print(result)
