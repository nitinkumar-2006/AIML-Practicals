# Experiment 10: Simulated Annealing

## Aim

To implement Simulated Annealing in Python to solve an optimization problem and demonstrate how it can escape local optima.

## Theory

Simulated Annealing is a probabilistic optimization algorithm inspired by the cooling process of heated materials.

Unlike Hill Climbing, which only accepts better neighbouring solutions, Simulated Annealing can sometimes accept a worse solution. This helps it escape local optima and explore other parts of the search space.

The probability of accepting a worse solution depends on the temperature. At high temperatures, worse solutions are more likely to be accepted. As the temperature decreases, this probability becomes smaller.

In this experiment, the algorithm maximizes the objective function:

**f(x) = −(x − 3)² + 10 sin(2x)**

The search is restricted to integer values from `-10` to `10`.

## Algorithm

1. Start the program.
2. Define the objective function.
3. Choose an initial solution and set the initial temperature.
4. Generate a neighbouring solution.
5. Calculate the difference between the new and current function values.
6. Accept the new solution if it is better, or probabilistically accept it if it is worse.
7. Store the best solution found so far.
8. Reduce the temperature gradually.
9. Repeat until the temperature reaches the stopping condition.
10. Display the best solution and its function value.

## Program

The source code is available in [`simulated_annealing.py`](./simulated_annealing.py).

## Sample Output

```text
Starting point: 0
Best value of x: 4
Maximum function value: 8.89
```

## Result

Simulated Annealing was implemented successfully in Python to search for a high-value solution using probabilistic acceptance and gradual cooling.

## Conclusion

This experiment demonstrated how Simulated Annealing explores possible solutions and may accept worse solutions to escape local optima. Gradually reducing the temperature allows the search to become more selective over time.