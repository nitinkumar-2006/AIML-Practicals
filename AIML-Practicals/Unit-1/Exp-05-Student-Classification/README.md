# Experiment 5: Student Classification Using Rule-Based Reasoning

## Aim

To classify students as topper, average, or fail using facts and rule-based reasoning in Prolog.

## Theory

Rule-based reasoning is a technique in which conclusions are drawn from stored facts using predefined rules.

In this experiment, student marks are stored as facts. Prolog applies classification rules to determine each student's category:

- **Topper:** Marks are 85 or above.
- **Average:** Marks are 50 or above but less than 85.
- **Fail:** Marks are below 50.

These thresholds are used for this program and can be changed if required.

## Algorithm

1. Start the program.
2. Store the marks of each student as facts.
3. Define a rule to classify students scoring 85 or above as toppers.
4. Define a rule to classify students scoring from 50 to below 85 as average.
5. Define a rule to classify students scoring below 50 as fail.
6. Query the database to find each student's category.
7. Display the results.

## Program

The source code is available in [`student_classification.pl`](./student_classification.pl).

## Sample Queries and Output

**1. Find Aarav's category**

Query:
```prolog
?- student_category(aarav, Category).
```

Output:
```text
Category = topper.
```

**2. Find Kabir's category**

Query:
```prolog
?- student_category(kabir, Category).
```

Output:
```text
Category = fail.
```

**3. Display the categories of all students**

Query:
```prolog
?- student_category(Student, Category).
```

Output:
```text
Student = aarav,
Category = topper ;

Student = riya,
Category = average ;

Student = kabir,
Category = fail ;

Student = meera,
Category = fail ;

Student = ishan,
Category = topper.
```

Press `;` in the Prolog console to see the next matching result.

## Result

Students were classified as topper, average, or fail based on their marks using Prolog facts and rules.

## Conclusion

This experiment demonstrated rule-based reasoning in Prolog. It showed how stored facts and conditions can be used to classify students automatically.