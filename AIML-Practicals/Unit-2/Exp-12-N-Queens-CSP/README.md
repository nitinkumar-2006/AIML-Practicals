# Experiment 12: N-Queens using CSP and Backtracking

## Aim
To solve the N-Queens problem using Constraint Satisfaction Problem (CSP) and backtracking in Prolog.

## Theory
The N-Queens problem requires placing N queens on an N × N chessboard so that no two queens attack each other.

- **Variables:** Rows of the chessboard.
- **Domain:** Possible columns for each queen.
- **Constraints:** No two queens can share the same column or diagonal.
- **Backtracking:** If a placement is invalid, the program removes the queen and tries another position.

## Algorithm
1. Initialize the chessboard.
2. Place one queen in each row.
3. Check whether the selected column and diagonals are safe.
4. If the position is safe, place the queen and move to the next row.
5. If no position works, remove the previous queen and try another position.
6. Print the solution when all queens are placed successfully.

## Program
The Prolog program is provided in [`n_queens.pl`](./n_queens.pl). Run with SWI-Prolog using `n_queens(4, Board).`

## Sample Output
```text
Solution:
. Q . .
. . . Q
Q . . .
. . Q .
```

## Result
The N-Queens problem was successfully solved using backtracking.

## Conclusion
Backtracking finds a valid arrangement by checking constraints and reconsidering earlier placements whenever necessary.