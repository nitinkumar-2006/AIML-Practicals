
# Experiment 7: Greedy Best-First Search

import heapq

# Graph connections
graph = {
    'a': ['b', 'c'],
    'b': ['a', 'd'],
    'c': ['a', 'e'],
    'd': ['b', 'g'],
    'e': ['c', 'g'],
    'g': ['d', 'e']
}

# Heuristic values: estimated distance to the goal
heuristic = {
    'a': 5,
    'b': 3,
    'c': 4,
    'd': 1,
    'e': 2,
    'g': 0
}

def greedy_best_first(start, goal):
    queue = [(heuristic[start], [start])]
    visited = set()

    while queue:
        h, path = heapq.heappop(queue)
        current = path[-1]

        if current in visited:
            continue

        visited.add(current)

        if current == goal:
            return path

        for neighbour in graph[current]:
            if neighbour not in visited and neighbour not in path:
                new_path = path + [neighbour]
                heapq.heappush(
                    queue, (heuristic[neighbour], new_path)
                )

    return None

start = 'a'
goal = 'g'

path = greedy_best_first(start, goal)

if path:
    print("Path found:", path)
else:
    print("No path found.")