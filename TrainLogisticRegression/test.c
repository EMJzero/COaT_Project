#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>

#define SIZE 8

#define LEARNING_RATE 0.01
#define EPOCHS 1000

/*
NOTE:   the whole code assumes normalized data between 0 and 1. However setting TAFFO's
        ranges exactly at 0 and 1 causes massive errors, thus the 0.1 enlargment
        of the ranges was adopted.
*/

// Sigmoid function
float sigmoid(float z) {
    return 1.0 / (1.0 + exp(-z));
}

// Logistic loss function | final output usage only
float logistic_loss(float predicted, float actual) {
    return -actual * log(predicted) - (1.0 - actual) * log(1.0 - predicted);
}

// Gradient descent to update weights
void gradient_descent(int n, float *w, float *s, float *o) {
    // Fixed point variants of the arrays
    float w_[SIZE] __attribute((annotate("target('weights') scalar(range(-2, 2))")));
    float s_[SIZE] __attribute((annotate("scalar(range(-0.1, 1.1) final)")));
    
    // Fixed point conversion of the weights
    for (int j = 0; j < SIZE; j++) {
        w_[j] = w[j];
    }

    // Correct output
    float o_ __attribute((annotate("scalar(range(-0.1, 1.1) final)")));
    
    // Predicted output
    float z __attribute((annotate("scalar(range(-16, 16))")));
    float predicted __attribute((annotate("scalar(range(-0.1, 1.1) final)")));

    for (int epoch = 0; epoch < EPOCHS; epoch++) {
        // Loop through each training sample
        for (int i = 0; i < n; i++) {
            // Fixed point conversion of samples and expected output
            for (int j = 0; j < SIZE; j++) {
                s_[j] = s[i * SIZE + j];
            }
            o_ = o[i];

            // Calculate the predicted output for the current sample
            z = 0.0;
            for (int j = 0; j < SIZE; j++) {
                z += w_[j] * s_[j];
            }
            predicted = sigmoid(z);

            // Update weights using gradient descent
            for (int j = 0; j < SIZE; j++) {
                w_[j] -= LEARNING_RATE * (predicted - o_) * s_[j];
            }
        }
    }

    // Floating point reconversion of weights
    for (int j = 0; j < SIZE; j++) {
        w[j] = w_[j];
    }
}

// Function to generate a synthetic dataset
void generate_dataset(int n, float *s, float *o) {
    srand(time(NULL)); // Seed the random number generator

    for (int i = 0; i < n; i++) {
        // Generate random features for each sample
        for (int j = 0; j < SIZE; j++) {
            s[i * SIZE + j] = rand() / (float)RAND_MAX; // Random value between 0 and 1
        }

        // Generate random class labels (0 or 1)
        o[i] = rand() % 2;
    }
}

int main() {
    int n = 100; // Number of training samples
    float w[SIZE] = {0.0}; // Initial weights (set to 0 initially)
    float s[SIZE * 100]; // Input samples, SIZE features per sample, 100 samples
    float o[100]; // Correct output samples for each batch of SIZE elements of *s

    // Generate the synthetic dataset
    generate_dataset(n, s, o);

    // Train the logistic regression model
    gradient_descent(n, w, s, o);

    // Final loss evaluation (on new data)
    int n_test = (int)n/10;
    generate_dataset(n_test, s, o);
    
    float loss = 0;
    for (int i = 0; i < n_test; i++) {
        // Calculate the predicted output for the current sample
        float z = 0.0;
        for (int j = 0; j < SIZE; j++) {
            z += w[j] * s[i * SIZE + j];
        }
        float predicted = sigmoid(z);

        // Update the loss
        loss += logistic_loss(predicted, o[i]);
    }

    printf("Weights:\n");
    for (int j = 0; j < SIZE; j++)
        printf("%.4f ", w[j]);
    printf("\nLoss: %f\n", loss);

    return 0;
}
