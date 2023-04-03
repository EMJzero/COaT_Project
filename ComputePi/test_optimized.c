int main()
{
    double __attribute((annotate("target('pi') scalar(range(0, 4) final) backtracking(1)"))) pi = 0;
    int iters;

    printf("How many iterations to calculate pi for? ");
    scanf("%d", &iters);

    for (int i = 0; i < iters * 2; i += 4)
    {
        pi += 1.0 / (i + 1);
        //printf("aa: %f\n", pi * 4);
        pi -= 1.0 / (i + 3);
        //printf("as: %f\n", pi * 4);
    }

    printf("The value of pi is: %f\n", pi * 4);

    return 0;
}