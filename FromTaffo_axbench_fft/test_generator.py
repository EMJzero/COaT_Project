import random as rnd
import math
import sys

template = "\n\t<testbench\n\tPd26=\"{ind_}\"\n\tPd27=\"{x_r_}\"\n\tPd28=\"{x_i_}\"\n\tPd29=\"{f_r_}\"\n\tPd30=\"{f_i_}\"\n\tindices=\"{ind_}\"\n\tx_real=\"{x_r_}\"\n\tx_imag=\"{x_i_}\"\n\tf_real=\"{f_r_}\"\n\tf_imag=\"{f_i_}\"/>"

len_code_constant = 1024
how_many_testbenches = 2

def to_string(values):
    res = ""
    for value in values:
        res += str(value) + ", "

    return res[:-2]

def generate_values():
    ind = [0 for i in range(len_code_constant)] 
    impulse_length = len_code_constant*rnd.random()
    x_r = [(1 if i <= impulse_length else 0) for i in range(len_code_constant)]
    x_i = [0 for i in range(len_code_constant)]
    f_r = [0 for i in range(len_code_constant)]
    f_i = [0 for i in range(len_code_constant)]

    return template.replace("ind_", to_string(ind)).replace("x_r_", to_string(x_r)).replace("x_i_", to_string(x_i)).replace("f_r_", to_string(f_r)).replace("f_i_", to_string(f_i))

result = "<?xml version=\"1.0\"?>\n<function>"

for i in range(how_many_testbenches):
    result += generate_values()

result += "\n</function>"

result = result.replace("\t", "    ")

print(result)
