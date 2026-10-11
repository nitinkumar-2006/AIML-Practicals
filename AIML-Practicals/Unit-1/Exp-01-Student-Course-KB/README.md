# Experiment 1: Student-Course Knowledge Base

## Aim

To create a simple knowledge base in Prolog using facts and predicates, and retrieve information by asking queries (goals).

## Theory

A knowledge base stores information in a form that a computer can use to answer questions. In Prolog, this information is represented using facts and rules.

For this experiment, facts are used to store student names, course names, and the courses in which students are enrolled. Queries are then used to retrieve the required information.

## Algorithm

1. Start the program.
2. Define facts for the students.
3. Define facts for the available courses.
4. Define enrolment facts to connect students with their courses.
5. Ask queries to retrieve student, course, and enrolment information.
6. Observe the answers returned by Prolog.
7. Stop the program.

## Program

The source code is available in [`student_course.pl`](./student_course.pl).

## Sample Queries and Output

**Query 1: Display all students**

```prolog
?- student(X).
```

Expected output:

```text
X = aarav ;
X = riya ;
X = kabir ;
X = meera ;
X = ishan.
```

**Query 2: Find the courses in which Aarav is enrolled**

```prolog
?- enrolled(aarav, Course).
```

Expected output:

```text
Course = ai ;
Course = prolog.
```

**Query 3: Find all students enrolled in AI**

```prolog
?- enrolled(Student, ai).
```

Expected output:

```text
Student = aarav ;
Student = kabir ;
Student = riya.
```

**Query 4: Check whether Meera is a student**

```prolog
?- student(meera).
```

Expected output:

```text
true.
```

*Note: In the Prolog console, press `;` to request another answer when multiple answers are available. The exact display may vary slightly by Prolog version.*

## Result

The student-course knowledge base was created successfully using Prolog facts and predicates. Queries were used to retrieve student details, course enrolments, and matching records.

## Conclusion

This experiment demonstrates how Prolog stores information as facts and answers questions through logical matching. It also introduces the basic idea of a knowledge base, which is an important part of rule-based artificial intelligence.