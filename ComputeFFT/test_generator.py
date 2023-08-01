import random as rnd
import math
import sys

template = "\n\t<testbench\n\tPd80=\"_n_\"\n\tPd81=\"{x_r_}\"\n\tPd82=\"{x_i_}\"\n\tPd83=\"{f_r_}\"\n\tPd84=\"{f_i_}\"\n\tPd85=\"inv_\"\n\tn=\"_n_\"\n\tin_real=\"{x_r_}\"\n\tin_imag=\"{x_i_}\"\n\tout_real=\"{f_r_}\"\n\tout_imag=\"{f_i_}\"\n\tinverse=\"inv_\"/>"

len_code_constant = 64
how_many_testbenches = 2

def grad1_1d(hash, x):
    h = hash & 15
    grad = 1.0 + (h & 7)
    if h & 8:
        grad = -grad
    return grad * x

def noise1(x):
    M = 256
    hash_mask = M - 1

    def hash_func(x):
        return (int(x) * 1619) & hash_mask

    h = hash_func(x)
    
    x0 = x - int(x)
    x1 = x0 - 1.0

    grad0 = grad1_1d(h, x0)
    grad1 = grad1_1d(h, x1)

    t0 = 1.0 - x0 * x0
    t0 *= t0
    n0 = t0 * t0 * grad0

    t1 = 1.0 - x1 * x1
    t1 *= t1
    n1 = t1 * t1 * grad1

    return 0.5 * (n0 + n1) + 0.5

def generate_simplex_noise_array(length, scale=1.0, octaves=1, persistence=0.5, lacunarity=2.0, seed=None):
    """
    Generate a unidimensional array with successive sampling from Simplex noise.

    Parameters:
        length (int): The number of points in the array.
        scale (float): The scale factor to adjust the noise amplitude. Default is 1.0.
        octaves (int): The number of octaves in the noise function. Higher octaves add more details. Default is 1.
        persistence (float): The persistence value controls the decrease in amplitude for each successive octave. Default is 0.5.
        lacunarity (float): The lacunarity value controls the increase in frequency for each successive octave. Default is 2.0.
        seed (int or None): Seed for the random number generator. If None, the generator will use a random seed.

    Returns:
        list: A list containing the generated unidimensional array.
    """
    if seed is not None:
        rnd.seed(seed)

    def noise(x):
        return noise1(x * scale)

    array = [noise(i / length) for i in range(length)]

    for octave in range(1, octaves):
        scale *= lacunarity
        persistence *= persistence
        array = [array[i] + noise(i / length * scale) * persistence for i in range(length)]

    return array

def to_string(values):
    res = ""
    for value in values:
        res += str(value) + ", "

    return res[:-2]

def generate_values():
    #impulse_length = len_code_constant*rnd.random()
    #x_r = [(0 if i <= impulse_length else 1) for i in range(len_code_constant)]
    
    x_r = map(lambda a : a*2 - 1, generate_simplex_noise_array(len_code_constant, scale=1.0, octaves=2, persistence=0.4, lacunarity=3.0, seed=42))
    x_i = [0 for i in range(len_code_constant)]
    f_r = [0 for i in range(len_code_constant)]
    f_i = [0 for i in range(len_code_constant)]

    return template.replace("_n_", str(len_code_constant)).replace("x_r_", to_string(x_r)).replace("x_i_", to_string(x_i)).replace("f_r_", to_string(f_r)).replace("f_i_", to_string(f_i)).replace("inv_", str(0))

result = "<?xml version=\"1.0\"?>\n<function>"

for i in range(how_many_testbenches):
    result += generate_values()

result += "\n</function>"

result = result.replace("\t", "    ")

print(result)
