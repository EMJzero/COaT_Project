#include <stdio.h>
#include <stdlib.h>
//#include <math.h>

#define SIZE 4

void swap_rows(float *matrix __attribute((annotate("target('matrix') scalar(range(-16, 16))"))), int row1, int row2, int N) {
    for (int i = 0; i < N; i++) {
        float temp __attribute((annotate("scalar(range(-16, 16))"))) = matrix[row1 * N + i];
        matrix[row1 * N + i] = matrix[row2 * N + i];
        matrix[row2 * N + i] = temp;
    }
}

void scale_row(float *matrix __attribute((annotate("target('matrix') scalar(range(-16, 16))"))), int row, int N, float scalar __attribute((annotate("scalar(range(-16, 16))")))) {
    for (int i = 0; i < N; i++) {
        matrix[row * N + i] *= scalar;
    }
}

void add_scaled_row(float *matrix __attribute((annotate("target('matrix') scalar(range(-16, 16))"))), int dest_row, int src_row, int N, float scalar __attribute((annotate("scalar(range(-16, 16))")))) {
    for (int i = 0; i < N; i++) {
        matrix[dest_row * N + i] += scalar * matrix[src_row * N + i];
    }
}

float absolute(float x __attribute((annotate("scalar(range(-16, 16))")))) __attribute((annotate("target('abs_res') scalar(range(-16, 16))"))) {
    return (x < 0) ? -x : x;
}

void invert_matrix(int N, float *M_f, float *M_inv_f) {
    // Declare fixed point matrices
    float M[SIZE*SIZE] __attribute((annotate("target('matrix') scalar(range(-16, 16))")));
    float M_inv[SIZE*SIZE] __attribute((annotate("target('inverse_matrix') scalar(range(-16, 16))")));

    // Copy the floating point matrix to the fixed point one
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            M[i * N + j] = M_f[i * N + j];
        }
    }

    // Initialize M_inv as an identity matrix
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            M_inv[i * N + j] = (i == j) ? 1.0f : 0.0f;
        }
    }

    for (int pivot = 0; pivot < N; pivot++) {
        // Find the pivot row
        int pivot_row = pivot;
        for (int i = pivot + 1; i < N; i++) {
            if (absolute(M[i * N + pivot]) > absolute(M[pivot_row * N + pivot])) {
                pivot_row = i;
            }
        }

        // Swap rows to make the pivot element non-zero
        if (pivot_row != pivot) {
            swap_rows(M, pivot_row, pivot, N);
            swap_rows(M_inv, pivot_row, pivot, N);
        }

        // Scale the pivot row
        float pivot_value __attribute((annotate("target('matrix') scalar(range(-16, 16) final)"))) = M[pivot * N + pivot];
        scale_row(M, pivot, N, 1.0f / pivot_value);
        scale_row(M_inv, pivot, N, 1.0f / pivot_value);

        // Eliminate other rows
        for (int i = 0; i < N; i++) {
            if (i != pivot) {
                float factor __attribute((annotate("target('matrix') scalar(range(-16, 16) final)")))= -M[i * N + pivot];
                add_scaled_row(M, i, pivot, N, factor);
                add_scaled_row(M_inv, i, pivot, N, factor);
            }
        }
    }

    // Copy back the fixed point result to the floating point matrix
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            M_inv_f[i * N + j] = M_inv[i * N + j];
        }
    }
}

int main() {
    int N = SIZE; // Change this to the desired size of the matrix
    /*float M[SIZE*SIZE] = {
        2, 1, 0, 3,
        0, 1, 1, 0,
        1, 0, 2, 2,
        1, 3, 2, 1
    };*/
    float M[SIZE*SIZE] = {
        16, -16, 9, -2,
        0, -11, 14, 8,
        2, 5, 9, -1,
        11, 0, 2, -1
    };
    float M_inv[SIZE * SIZE];

    // Printing the inverted matrix
    printf("Original Matrix:\n");
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            printf("%f\t", M[i * N + j]);
        }
        printf("\n");
    }

    invert_matrix(N, M, M_inv);

    // Printing the inverted matrix
    printf("Inverted Matrix:\n");
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            printf("%f\t", M_inv[i * N + j]);
        }
        printf("\n");
    }

    return 0;
}
