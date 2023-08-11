import random as rnd

template = "\n\t<testbench\n\tPd149=\"N_\"\n\tPd150=\"{M_f_}\"\n\tPd151=\"{M_inv_f_}\"\n\tN=\"N_\"\n\tM_f=\"{M_f_}\"\n\tM_inv_f=\"{M_inv_f_}\"/>"

size_code_constant = 4
how_many_testbenches = 8

def minor(matrix, row, col):
    return [row[:col] + row[col+1:] for row in (matrix[:row] + matrix[row+1:])]

def determinant(matrix):
    n = len(matrix)
    if n == 1:
        return matrix[0][0]
    if n == 2:
        return matrix[0][0] * matrix[1][1] - matrix[0][1] * matrix[1][0]
    
    det = 0
    for col in range(n):
        det += ((-1) ** col) * matrix[0][col] * determinant(minor(matrix, 0, col))
    return det

# upper and lower bounds included
def generate_linearized_matrix(N, upperBound=0, lowerBound=-1):
    if upperBound < lowerBound:
        raise ValueError("Upper bound must be greater than or equal to lower bound.")
    
    matrix = [[0 for _ in range(N)] for _ in range(N)]
    
    while determinant(matrix) == 0:
        for i in range(N):
            for j in range(N):
                matrix[i][j] = rnd.uniform(lowerBound, upperBound)
    
    linearized_matrix = [value for row in matrix for value in row]
    return linearized_matrix

def to_string(values):
    res = ""
    for value in values:
        res += str(value) + ", "

    return res[:-2]

def generate_values():
    M = generate_linearized_matrix(size_code_constant, 16, -16)
    M_inv = [0 for _ in range(size_code_constant**2)]

    return template.replace("N_", str(size_code_constant)).replace("M_f_", to_string(M)).replace("M_inv_f_", to_string(M_inv))

result = "<?xml version=\"1.0\"?>\n<function>"

for i in range(how_many_testbenches):
    result += generate_values()

result += "\n</function>"

result = result.replace("\t", "    ")

print(result)
