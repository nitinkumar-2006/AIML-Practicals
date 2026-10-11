
# Experiment 8: A* Search Algorithm

import heapq

# Graph connections with travel costs
graph = {
    'a': [('b', 1), ('c', 4)],
    'b': [('a', 1), ('d', 2), ('e', 5)],
    'c': [('a', 4), ('e', 1)],
    'd': [('b', 2), ('g', 5)],
    'e': [('b', 5), ('c', 1), ('g', 2)],
    'g': [('d', 5), ('e', 2)]
}

# Estimated distance from each node to the goal
heuristic = {
    'a': 5,
    'b': 5,
    'c': 3,
    'd': 4,
    'e': 2,
    'g': 0
}

def a_star(start, goal):
    queue = [(heuristic[start], 0, [start])]
    best_cost = {start: 0}

    while queue:
        f, cost, path = heapq.heappop(queue)
        current = path[-1]

        if cost > best_cost.get(current, float('inf')):
            continue

        if current == goal:
            return path, cost

        for neighbour, step_cost in graph[current]:
            new_cost = cost + step_cost

            if new_cost < best_cost.get(neighbour, float('inf')):
                best_cost[neighbour] = new_cost
                new_path = path + [neighbour]
                priority = new_cost + heuristic[neighbour]
                heapq.heappush(
                    queue, (priority, new_cost, new_path)
                )

    return None, float('inf')

start = 'a'
goal = 'g'

path, cost = a_star(start, goal)

if path:
    print("Path found:", path)
    print("Total cost:", cost)
else:
    print("No path found.")