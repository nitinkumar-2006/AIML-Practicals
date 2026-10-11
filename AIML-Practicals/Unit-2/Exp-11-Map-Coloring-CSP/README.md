# Experiment 11: Map Coloring using CSP and Backtracking

## Aim
To solve the Map Coloring problem using Constraint Satisfaction Problem (CSP) and backtracking in Python.

## Theory
Map Coloring is a CSP problem in which adjacent regions must have different colors.

- **Variables:** Regions of the map.
- **Domain:** Available colors — Red, Green, Blue.
- **Constraints:** Neighboring regions cannot have the same color.
- **Backtracking:** If a color assignment violates a constraint, the program tries another color.

## Algorithm
1. Define the regions and their neighboring regions.
2. Create a list of available colors.
3. Check whether a color is valid for the current region.
4. Assign a valid color and move to the next region recursively.
5. If no color works, remove the previous assignment and try another color.
6. Print the solution when all regions are colored.

## Program
The program is provided in `map_coloring.py`.

## Sample Output
```text
WA : Red
NT : Green
SA : Blue
Q : Red
NSW : Green
V : Red
T : Red
```

## Result
The Map Coloring problem was successfully solved using CSP and backtracking.

## Conclusion
Backtracking helps find a valid coloring by checking constraints and reconsidering assignments whenever necessary.