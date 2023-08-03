import random as rnd
import sys

template = "\n\t<testbench\n\tPd20=\"{arr_}\"\n\tPd21=\"{res_}\"\n\tarr=\"{arr_}\"\n\tres=\"{res_}\"/>"

len_code_constant = 100
how_many_testbenches = 2

# upper bound is included
def gen(min_, max_):
    return [min_ + (rnd.random() * (max_ - min_)) for i in range(len_code_constant)]

def to_string(values):
    res = ""
    for value in values:
        res += str(value)[:6] + ", "

    return res[:-2]

def generate_values():
    # Those work!
    #arr1 = gen(100, 200)
    #arr2 = gen(0.4, 0.7)
    #arr3 = gen(0.7, 0.8)
    #arr4 = gen(2, 3)
    #arr5 = gen(-3, -1)
    # Those screw up a little (tiny) bit the Verilator simulation for whatever reason...
    arr1 = gen(0, 300)
    arr2 = gen(-10, 50)
    arr3 = gen(-10, 100)
    arr4 = gen(-2, 2)
    arr5 = gen(-2, 12)
    res = [0 for i in range(len_code_constant)]

    arr = []
    for d_ in zip(arr1, arr2, arr3, arr4, arr5):
        arr.append(d_[0])
        arr.append(d_[1])
        arr.append(d_[2])
        arr.append(d_[3])
        arr.append(d_[4])
    return template.replace("arr_", to_string(arr)).replace("res_", to_string(res))

result = "<?xml version=\"1.0\"?>\n<function>"

for i in range(how_many_testbenches):
    result += generate_values()

result += "\n</function>"

result = result.replace("\t", "    ")

print(result)
