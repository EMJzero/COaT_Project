import random as rnd

template = "\n\t<testbench\n\tPd5=\"N_\"\n\tPd6=\"{M_f_}\"\n\tPd7=\"{P_}\"\n\tN=\"N_\"\n\tM_f=\"{M_f_}\"\n\tP=\"{P_}\"/>"

size_code_constant = 4
how_many_testbenches = 8

# upper and lower bounds included
def generate_linearized_matrix(N, upperBound=0, lowerBound=-1):
    if upperBound < lowerBound:
        raise ValueError("Upper bound must be greater than or equal to lower bound.")
    
    matrix = [[0 for _ in range(N)] for _ in range(N)]

    zero = (rnd.randint(0, N-1), rnd.randint(0, N-1))
    
    for i in range(N):
        for j in range(N):
            if (i, j) != zero:
                matrix[i][j] = rnd.uniform(lowerBound, upperBound)
    
    linearized_matrix = [value for row in matrix for value in row]
    return linearized_matrix

def to_string(values):
    res = ""
    for value in values:
        res += str(value) + ", "

    return res[:-2]

def generate_values():
    M = generate_linearized_matrix(size_code_constant)
    P = [0 for _ in range(size_code_constant**2)]

    return template.replace("N_", str(size_code_constant)).replace("M_f_", to_string(M)).replace("P_", to_string(P))

result = "<?xml version=\"1.0\"?>\n<function>"

for i in range(how_many_testbenches):
    result += generate_values()

result += "\n</function>"

result = result.replace("\t", "    ")

print(result)
