
def is_safe(board, row, col, n):
    for i in range(row):
        if board[i] == col:
            return False

        if abs(board[i] - col) == abs(i - row):
            return False

    return True


def solve_n_queens(board, row, n):
    if row == n:
        return True

    for col in range(n):
        if is_safe(board, row, col, n):
            board[row] = col

            if solve_n_queens(board, row + 1, n):
                return True

            board[row] = -1

    return False


n = 4
board = [-1] * n

if solve_n_queens(board, 0, n):
    print("Solution:")
    for row in range(n):
        for col in range(n):
            if board[row] == col:
                print("Q", end=" ")
            else:
                print(".", end=" ")
        print()
else:
    print("No solution exists")
