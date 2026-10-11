
# Experiment 10: Simulated Annealing

import math
import random

random.seed(0)

def objective(x):
    return -(x - 3) ** 2 + 10 * math.sin(2 * x)

def simulated_annealing(start):
    current = start
    best = start
    temperature = 10.0

    while temperature > 0.1:
        neighbour = current + random.choice([-1, 1])

        if neighbour < -10 or neighbour > 10:
            temperature *= 0.95
            continue

        difference = objective(neighbour) - objective(current)

        if difference > 0 or random.random() < math.exp(difference / temperature):
            current = neighbour

        if objective(current) > objective(best):
            best = current

        temperature *= 0.95

    return best, objective(best)

start = 0
best_x, best_value = simulated_annealing(start)

print("Starting point:", start)
print("Best value of x:", best_x)
print("Maximum function value:", round(best_value, 2))