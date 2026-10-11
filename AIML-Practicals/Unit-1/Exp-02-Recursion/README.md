# Experiment 2: Arithmetic Operations, Factorial and Fibonacci Using Recursion

## Aim

To perform basic arithmetic operations and implement factorial and Fibonacci calculations using recursion in Prolog.

## Theory

Prolog can perform arithmetic calculations using the `is` operator. It also supports recursion, where a predicate calls itself to solve a smaller version of the same problem.

In this experiment, addition, subtraction, multiplication and division are defined as predicates. Factorial and Fibonacci are implemented using recursive definitions with base cases to stop further calls.

## Algorithm

1. Start the program.
2. Define predicates for the four basic arithmetic operations.
3. Define the base case and recursive case for factorial.
4. Define the base cases and recursive case for Fibonacci.
5. Run queries with suitable input values.
6. Check the results returned by Prolog.

## Program

The source code is available in [`recursion.pl`](./recursion.pl).

## Sample Queries and Output

**1. Addition**

Query:
```prolog
?- add(10, 5, Result).
```

Output:
```text
Result = 15.
```

**2. Multiplication**

Query:
```prolog
?- multiply(4, 3, Result).
```

Output:
```text
Result = 12.
```

**3. Factorial**

Query:
```prolog
?- factorial(5, Result).
```

Output:
```text
Result = 120.
```

**4. Fibonacci**

Query:
```prolog
?- fibonacci(6, Result).
```

Output:
```text
Result = 8.
```

The Fibonacci sequence starts with `0, 1, 1, 2, 3, 5, 8, ...`, so `fibonacci(6, Result)` returns `8`.

**5. Division**

Query:
```prolog
?- divide(10, 2, Result).
```

Output:
```text
Result = 5.
```

Note: Factorial and Fibonacci in this program are intended for non-negative integer inputs. Division by zero is not allowed.

## Result

Basic arithmetic operations were implemented successfully, and factorial and Fibonacci values were calculated using recursion in Prolog.

## Conclusion

This experiment helped demonstrate how Prolog handles arithmetic and solves problems through recursive predicates. It also showed the importance of base cases in preventing recursion from continuing indefinitely.