# Experiment 6: Breadth-First Search (BFS)

## Aim
To implement Breadth-First Search in Prolog to find a shortest path between two nodes in an unweighted graph.

## Theory
Breadth-First Search explores nodes level by level. It uses a queue to visit all nodes at the current distance before moving to the next level. In an unweighted graph, BFS finds a path with the minimum number of edges.

## Algorithm
1. Represent graph connections as Prolog facts.
2. Place the starting node in a queue as the first path.
3. Remove the first path from the queue.
4. If its last node is the goal, return the path.
5. Otherwise, add paths extended by unvisited neighbours to the end of the queue.
6. Repeat until a path is found or the queue is empty.

## Program
See [bfs.pl](./bfs.pl). Run using SWI-Prolog with the query bfs(a, g, Path).

## Sample Output
A valid shortest path is [a,b,d,g] (other equal-length paths may also be returned).

## Result
Breadth-First Search was implemented in Prolog to find a shortest path in an unweighted graph.

## Conclusion
This experiment demonstrates queue-based graph traversal and shortest-path search in Prolog.
