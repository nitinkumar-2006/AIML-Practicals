# Experiment 8: A* Search Algorithm

## Aim
To implement the A* Search algorithm in Prolog to find an optimal path using path cost and heuristic estimates.

## Theory
A* is an informed search algorithm that uses both the actual cost travelled and the estimated remaining cost to reach the goal.

The evaluation function is **f(n) = g(n) + h(n)**, where `g(n)` is the actual cost from the start, `h(n)` is the estimated remaining cost, and `f(n)` is the estimated total cost. With a suitable admissible heuristic and correct frontier ordering, A* can find an optimal path.

## Algorithm
1. Represent the weighted graph using Prolog edge facts.
2. Assign heuristic values to nodes.
3. Start the frontier with the initial node and cost zero.
4. Select the frontier path with the lowest `f(n) = g(n) + h(n)`.
5. If the goal is reached, return the path and its actual cost.
6. Otherwise, add unvisited neighbouring nodes with updated costs.
7. Repeat until the goal is reached or no path remains.

## Program
The Prolog source code is available in [a_star.pl](./a_star.pl). Run with SWI-Prolog using `a_star(a, g, Path, Cost).`

## Sample Output
```text
Path = [a, b, d, g],
Cost = 7.
```

## Result
The A* Search algorithm was implemented in Prolog to find a path and calculate its total cost using path costs and heuristic estimates.

## Conclusion
This experiment demonstrates how A* combines actual path cost and estimated remaining cost to guide search toward a low-cost solution.