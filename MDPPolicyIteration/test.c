#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define SIZE 4

/*
Function that evaluates, via the Bellman equation, the state value function of a MDP where the task is:
given a matrix NxN you start in the top left (0, 0) and can either not move or move by one cell up, down,
left or right at every step. Every cell has a random value between -1 and 0 that is the negative reward
for staying there, you must maximize the total reward gained over an arbitrary number of steps.
Argumetns:
- N: size of the matrices
- *M: pointer to an NxN matrix where each cell indicates its reward for staying there one step
- *P: pointer to an NxN matrix containing a deterministic policy, it encodes for each cell the deterministic action taken from it:
    - 0: stay still
    - 1: up
    - 2: down
    - 3: left
    - 4: right
- *V: a NxN matrix where the function writes the value function values for each cell
*/

void evaluateValueFunction(int N, double *M, int *P, double *V) {
    const double epsilon __attribute((annotate("scalar()"))) = 1e-3; // Was 1e-6 // Small threshold for convergence
    const double discountFactor __attribute((annotate("scalar()"))) = 0.9; // Discount factor for future rewards
    
    while (1) {
        double maxDiff __attribute((annotate("target('max_difference') scalar()"))) = 0.0;
        
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++) {
                int action = P[i * N + j]; // Deterministic action
                
                double oldValue __attribute((annotate("scalar()"))) = V[i * N + j];
                double newValue __attribute((annotate("scalar()"))) = -M[i * N + j]; // Reward for staying in the current cell
                
                if (action == 1 && i > 0) { // Move up
                    newValue += discountFactor * V[(i - 1) * N + j];
                } else if (action == 2 && i < N - 1) { // Move down
                    newValue += discountFactor * V[(i + 1) * N + j];
                } else if (action == 3 && j > 0) { // Move left
                    newValue += discountFactor * V[i * N + (j - 1)];
                } else if (action == 4 && j < N - 1) { // Move right
                    newValue += discountFactor * V[i * N + (j + 1)];
                }
                
                V[i * N + j] = newValue;
                
                double diff __attribute((annotate("scalar()"))) = fabs(newValue - oldValue);
                if (diff > maxDiff) {
                    maxDiff = diff;
                }
            }
        }

        /*printf("Current Value Function Matrix:\n");
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++) {
                printf("%.8f\t", V[i * N + j]);
            }
            printf("\n");
        }*/
        
        if (maxDiff < epsilon) {
            break; // Convergence reached
        }
    }
}

/*
Implementation of the policy iteration algorithm utilizing the above "evaluateValueFunction" to find
the optimal policy for the same problem.
Arguments:
- N: size of the matrices
- *M: pointer to an NxN matrix where each cell indicates its reward for staying there one step
- *P: pointer to an NxN matrix initially containing a random deterministic policy and where the final
    deterministic optimal policy will be written
*/

void policyIteration(int N, double *M_f, int *P) {
    double discountFactor = 0.9; // Discount factor for future rewards

    double V[SIZE*SIZE] __attribute((annotate("target('state_value_function') scalar(range(-100, 0) final)")));
    
    // Floating point to fixed point conversion
    double M[SIZE*SIZE] __attribute((annotate("target('rewards_matrix') scalar(range(-1, 0) final)")));
    for (int i = 0; i < N; i++)
        for (int j = 0; j < N; j++)
            M[i * N + j] = M_f[i * N + j];
    
    while (1) {
        // Policy Evaluation
        evaluateValueFunction(N, M, P, V);
        
        int policyStable = 1;
        
        // Policy Improvement
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++) {
                int oldAction = P[i * N + j];
                int bestAction = oldAction;
                double bestValue __attribute((annotate("scalar(range(0, 1))"))) = -M[i * N + j]; // Reward for staying in the current cell
                
                if (i > 0) { // Move up
                    double upValue __attribute((annotate("scalar()"))) = V[(i - 1) * N + j];
                    if (-M[i * N + j] + discountFactor * upValue > bestValue) {
                        bestValue = -M[i * N + j] + discountFactor * upValue;
                        bestAction = 1;
                    }
                }
                if (i < N - 1) { // Move down
                    double downValue __attribute((annotate("scalar()"))) = V[(i + 1) * N + j];
                    if (-M[i * N + j] + discountFactor * downValue > bestValue) {
                        bestValue = -M[i * N + j] + discountFactor * downValue;
                        bestAction = 2;
                    }
                }
                if (j > 0) { // Move left
                    double leftValue __attribute((annotate("scalar()"))) = V[i * N + (j - 1)];
                    if (-M[i * N + j] + discountFactor * leftValue > bestValue) {
                        bestValue = -M[i * N + j] + discountFactor * leftValue;
                        bestAction = 3;
                    }
                }
                if (j < N - 1) { // Move right
                    double rightValue __attribute((annotate("scalar()"))) = V[i * N + (j + 1)];
                    if (-M[i * N + j] + discountFactor * rightValue > bestValue) {
                        bestValue = -M[i * N + j] + discountFactor * rightValue;
                        bestAction = 4;
                    }
                }
                
                if (bestAction != oldAction) {
                    policyStable = 0;
                }
                
                P[i * N + j] = bestAction;
            }
        }

        /*printf("Current Policy Matrix:\n");
        for (int i = 0; i < N; i++) {
            for (int j = 0; j < N; j++) {
                printf("%d\t", P[i * N + j]);
            }
            printf("\n");
        }*/
        
        if (policyStable) {
            break; // Optimal policy found
        }
    }
}

int main() {
    int N = SIZE; // matrices size
    double M[SIZE*SIZE] = {
        -1, -0.7, -0.5, -0.5,
        -0.9, -0.8, -0.45, -0.6,
        -0.8, -0.57, -0.5, -0.4,
        -0.2, -0.22, -0.1, 0
    };
    int P[SIZE*SIZE] = {0};
    
    policyIteration(N, M, P);
    
    // Print the resulting optimal policy matrix
    printf("Optimal Policy Matrix:\n");
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            printf("%d\t", P[i * N + j]);
        }
        printf("\n");
    }
    
    return 0;
}
