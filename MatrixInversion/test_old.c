// C Implementation for Gauss-Jordan Elimination Method
// Source: https://www.geeksforgeeks.org/program-for-gauss-jordan-elimination-method/

#include <stdio.h>

#define M 10

// Function to print the matrix
void PrintMatrix(float a[][M], int n)
{
    for (int i = 0; i < n; i++)
    {
        for (int j = 0; j <= n; j++)
            printf("%.2f ", a[i][j]);
        putchar('\n');
    }
}

// function to reduce matrix to reduced row echelon form.
int PerformOperation(float a[][M], int n)
{
    int i, j, k = 0, c, flag = 0, m = 0;
    float pro = 0;

    // Performing elementary operations
    for (i = 0; i < n; i++)
    {
        if (a[i][i] == 0)
        {
            c = 1;
            while ((i + c) < n && a[i + c][i] == 0)
                c++;
            if ((i + c) == n)
            {
                flag = 1;
                break;
            }
            for (j = i, k = 0; k <= n; k++) {
                float tmp = a[j][k];
                a[j][k] = a[j + c][k];
                a[j + c][k] = tmp;
            }
        }

        for (j = 0; j < n; j++)
        {

            // Excluding all i == j
            if (i != j)
            {

                // Converting Matrix to reduced row echelon form(diagonal matrix)
                float pro = a[j][i] / a[i][i];

                for (k = 0; k <= n; k++)
                    a[j][k] = a[j][k] - (a[i][k]) * pro;
            }
        }
    }
    return flag;
}

// Function to print the desired result if unique solutions exists, otherwise
// prints no solution or infinite solutions depending upon the input given.
void PrintResult(float a[][M], int n, int flag)
{
    printf("Result is :");

    if (flag == 2)
        printf("Infinite Solutions Exists\n");
    else if (flag == 3)
        printf("No Solution Exists\n");

    // Printing the solution by dividing constants by
    // their respective diagonal elements
    else
    {
        for (int i = 0; i < n; i++)
            printf("%.2f ", a[i][n] / a[i][i]);
        putchar('\n');
    }
}

// To check whether infinite solutions
// exists or no solution exists
int CheckConsistency(float a[][M], int n, int flag)
{
    int i, j;
    float sum;

    // flag == 2 for infinite solution
    // flag == 3 for No solution
    flag = 3;
    for (i = 0; i < n; i++)
    {
        sum = 0;
        for (j = 0; j < n; j++)
            sum = sum + a[i][j];
        if (sum == a[i][j])
            flag = 2;
    }
    return flag;
}

int main()
{
    float a[M][M] = {
        {0.1, 2.7, 1, 4},
        {1, 1, 2.2, 6.1},
        {2, 1.9, 1.5, 7}
    };

    // Order of Matrix(n)
    int n = 3, flag = 0;

    // Performing Matrix transformation
    flag = PerformOperation(a, n);

    if (flag == 1)
        flag = CheckConsistency(a, n, flag);

    // Printing Final Matrix
    printf("Final Augmented Matrix is : \n");
    PrintMatrix(a, n);
    putchar('\n');

    // Printing Solutions(if exist)
    PrintResult(a, n, flag);

    return 0;
}