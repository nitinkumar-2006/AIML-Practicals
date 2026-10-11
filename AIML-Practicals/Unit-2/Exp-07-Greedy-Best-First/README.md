# Experiment 7: Greedy Best-First Search

## Aim

To implement Greedy Best-First Search using a heuristic function to find a path between two nodes in a graph.

## Theory

Greedy Best-First Search is an informed search algorithm that selects the next node based on its estimated distance from the goal.

The heuristic function `h(n)` assigns an estimated value to each node. The algorithm prioritizes the node with the lowest heuristic value.

Unlike BFS, Greedy Best-First Search does not explore nodes level by level. It follows the direction that appears most promising based on the heuristic, but it does not guarantee the shortest path.

## Algorithm

1. Start the program.
2. Represent the graph using a dictionary.
3. Assign heuristic values to the nodes.
4. Add the starting node and its heuristic value to a priority queue.
5. Remove the node with the lowest heuristic value.
6. If the goal is reached, return the path.
7. Otherwise, add its unvisited neighbours to the queue.
8. Repeat until the goal is found or the queue becomes empty.

## Program

The source code is available in [`greedy_best_first.py`](./greedy_best_first.py).

## Sample Output

```text
Path found: ['a', 'b', 'd', 'g']
```

## Result

Greedy Best-First Search was implemented successfully in Python using a heuristic function to find a path in a graph.

## Conclusion

This experiment demonstrated how a heuristic function guides a search algorithm towards a goal. The algorithm prioritizes estimated closeness rather than total path cost, so the path found is not always optimal.