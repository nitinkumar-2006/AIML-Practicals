
# Experiment 9: Hill Climbing

def objective(x):
    return -(x - 3) ** 2 + 9

def hill_climbing(start):
    current = start

    while True:
        neighbours = [current - 1, current + 1]
        best = current

        for neighbour in neighbours:
            if objective(neighbour) > objective(best):
                best = neighbour

        if best == current:
            return current, objective(current)

        current = best

start = 0
best_x, best_value = hill_climbing(start)

print("Starting point:", start)
print("Best value of x:", best_x)
print("Maximum function value:", best_value)