# Experiment 8: A* Search Algorithm

## Aim

To implement the A* Search algorithm in Python to find an optimal path using path cost and heuristic estimates.

## Theory

A* is an informed search algorithm that uses both the actual cost travelled and the estimated remaining cost to reach the goal.

It uses the evaluation function:

**f(n) = g(n) + h(n)**

- `g(n)` is the actual cost from the starting node to the current node.
- `h(n)` is the estimated cost from the current node to the goal.
- `f(n)` is the estimated total cost of the path.

In this experiment, a weighted graph is represented using a Python dictionary. A priority queue selects the path with the lowest estimated total cost. The algorithm also keeps track of the best known cost to each node.

A* can find an optimal path when its heuristic is admissible and the search correctly handles updated path costs.

## Algorithm

1. Start the program.
2. Represent the weighted graph using a dictionary.
3. Assign heuristic values to each node.
4. Initialize the priority queue with the starting node and cost zero.
5. Calculate the estimated total cost using `f(n) = g(n) + h(n)`.
6. Remove the path with the lowest estimated total cost.
7. If the goal is reached, return the path and its actual cost.
8. Otherwise, calculate the costs of neighbouring nodes and update any improved paths.
9. Repeat until the goal is reached or no path exists.

## Program

The source code is available in [`a_star.py`](./a_star.py).

## Sample Output

```text
Path found: ['a', 'c', 'e', 'g']
Total cost: 7
```

## Result

The A* Search algorithm was implemented successfully in Python to find a path and calculate its total cost using path costs and heuristic estimates.

## Conclusion

This experiment demonstrated how A* combines actual path cost and estimated remaining cost to guide a search. It also showed how a priority queue and best-cost tracking help the algorithm find an optimal path.