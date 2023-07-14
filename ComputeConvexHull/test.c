#include <stdio.h>

// Original algorithm curtesy of ChatGPT :)

#define len 100

// Function to compute the cross product of vectors (p1-p0) and (p2-p0)
int crossProduct(float p0_x, float p0_y, float p1_x, float p1_y, float p2_x, float p2_y) {
    return ((p1_x - p0_x) * (p2_y - p0_y)) - ((p2_x - p0_x) * (p1_y - p0_y));
}

int computeConvexHull(float * x_f, float * y_f, int numPoints, float * res_x, float * res_y) {
    // Ensure we have at least 3 points
    if (numPoints < 3) {
        printf("Error: Insufficient points to compute convex hull.\n");
        return 0;
    } else if (numPoints > len) {
        printf("Error: Too many points.\n");
        return 0;
    }

    float x[len] __attribute((annotate("target('x') scalar(range(-128, 128) final)")));
    float y[len] __attribute((annotate("target('y') scalar(range(-128, 128) final)")));

    for (int i = 0; i < numPoints; i++) {
        x[i] = x_f[i];
        y[i] = y_f[i];
    }

    // Find the leftmost point
    int leftmostIndex = 0;
    for (int i = 1; i < numPoints; i++) {
        if (x[i] < x[leftmostIndex])
            leftmostIndex = i;
    }

    // Start from the leftmost point and compute the convex hull in counterclockwise direction
    int currentPoint = leftmostIndex;
    int nextPoint;

    int hullPointIndex = 0;
    do {
        // Add the current point to the convex hull
        res_x[hullPointIndex] = x[currentPoint];
        res_y[hullPointIndex] = y[currentPoint];
        hullPointIndex++;

        // Find the next point that leads to the most counterclockwise turn
        nextPoint = (currentPoint + 1) % numPoints;
        for (int i = 0; i < numPoints; i++) {
            if (crossProduct(x[currentPoint], y[currentPoint], x[i], y[i], x[nextPoint], y[nextPoint]) < 0)
                nextPoint = i;
        }

        currentPoint = nextPoint;
    } while (currentPoint != leftmostIndex);

    return hullPointIndex;
}

int main() {
    
    float x[] = {0, 2, 1, 2, 3, 0, 3};
    float y[] = {3, 2, 1, 1, 0, 0, 3};

    int numPoints = sizeof(x) / sizeof(float);

    // Assuming res_x and res_y arrays are pre-allocated with enough space
    float res_x[numPoints];
    float res_y[numPoints];

    int resLength = computeConvexHull(x, y, numPoints, res_x, res_y);

    // Print the points on the convex hull
    printf("Convex Hull Points:\n");
    for (int i = 0; i < resLength; i++) {
        printf("(%.2f, %.2f)\n", res_x[i], res_y[i]);
    }

    return 0;
}