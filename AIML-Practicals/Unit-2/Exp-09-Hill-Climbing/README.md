# Experiment 9: Hill Climbing for Optimization

## Aim

To implement the Hill Climbing algorithm in Prolog to find an optimal solution for a given function.

## Theory

Hill Climbing is a local search algorithm used for optimization problems. It starts with an initial solution and repeatedly moves to a neighbouring solution if that solution improves the objective function.

The algorithm continues until no neighbouring solution provides a better result. At that point, it stops.

In this experiment, the objective function is:

**f(x) = -(x - 3)² + 9**

The function is maximized by starting at `x = 0` and checking neighbouring integer values. The maximum occurs at `x = 3`, where the function value is `9`.

Hill Climbing is simple to implement, but it can get stuck at a local optimum and does not always guarantee a global optimum.

## Algorithm

1. Start the program.
2. Define the objective function.
3. Choose an initial value of `x`.
4. Evaluate the current solution and its neighbouring values.
5. Move to a neighbour if it gives a higher function value.
6. Repeat until no neighbour improves the current solution.
7. Display the best solution and its function value.

## Program

The Prolog source code is available in [`hill_climbing.pl`](./hill_climbing.pl). Run with SWI-Prolog using `hill_climb(0, X, Value).`

## Sample Output

```text
Starting point: 0
Best value of x: 3
Maximum function value: 9
```

## Result

The Hill Climbing algorithm was implemented successfully in Prolog to maximize the given objective function.

## Conclusion

This experiment demonstrated how Hill Climbing improves a solution by moving towards better neighbouring values. It also introduced the limitation that the algorithm may stop at a local optimum instead of finding the global optimum.