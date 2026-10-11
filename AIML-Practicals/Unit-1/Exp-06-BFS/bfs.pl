# Experiment 6: Breadth-First Search (BFS)

## Aim

To implement Breadth-First Search in Prolog to find the shortest path between two nodes in a graph.

## Theory

Breadth-First Search (BFS) is a graph traversal algorithm that explores nodes level by level. It visits the nearest nodes first before exploring nodes that are farther away.

BFS uses a queue, which follows the FIFO (First In, First Out) principle. This ensures that paths with fewer edges are explored before longer paths. Therefore, BFS finds a shortest path in an unweighted graph.

In this experiment, graph connections are represented using facts, and Prolog predicates are used to search for a path between two nodes.

## Algorithm

1. Start the program.
2. Define the graph using edge facts.
3. Make each connection bidirectional using the `connected/2` predicate.
4. Add the starting node to the queue as the initial path.
5. Check whether the first path in the queue reaches the goal.
6. If not, add its unvisited neighbouring nodes to the end of the queue.
7. Repeat until the goal is reached.
8. Reverse the stored path to display it from the starting node to the goal.

## Program

The source code is available in [`bfs.pl`](./bfs.pl).

## Sample Queries and Output

**1. Find the shortest path from node `a` to node `g`**

Query:
```prolog
?- bfs(a, g, Path).
```

Output:
```text
Path = [a, b, d, g].
```

**2. Find a path from node `a` to node `f`**

Query:
```prolog
?- bfs(a, f, Path).
```

Output:
```text
Path = [a, c, f].
```

**3. Check whether a path exists between two nodes**

Query:
```prolog
?- bfs(a, g, Path).
```

Output:
```text
Path = [a, b, d, g].
```

The returned path may depend on the order in which graph edges are defined when multiple shortest paths exist.

## Result

Breadth-First Search was implemented successfully in Prolog to find shortest paths between nodes in an unweighted graph.

## Conclusion

This experiment demonstrated how BFS explores a graph using a queue and finds a shortest path in terms of the number of edges. It also introduced graph representation and path searching using Prolog predicates.