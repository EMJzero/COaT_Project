import random as rnd
import sys

template = "\n\t<testbench\n\tPd5=\"n_f_\"\n\tPd6=\"result_\"\n\tn_f=\"n_f_\"\n\tresult=\"result_\"/>"

how_many_testbenches = 256
values_range = 4096

# upper bound is included
def gen(upper_bound):
    if rnd.randint(0, 4) == 0:
        return rnd.randint(0, int(upper_bound**(1/2)))**2, 0
    else:
        return rnd.randint(0, upper_bound), 0

def generate_values(upper_bound):
    n_f, result = gen(upper_bound)
    return template.replace("n_f_", str(n_f)).replace("result_", str(result))

result = "<?xml version=\"1.0\"?>\n<function>"

for i in range(how_many_testbenches):
    result += generate_values(values_range)

result += "\n</function>"

result = result.replace("\t", "    ")

print(result)
