# Experiment 1: Student-Course Knowledge Base

## Aim
To create a knowledge base in Prolog using facts and predicates, and retrieve information by asking queries (goals).

## Theory
A knowledge base stores information that a computer can use to answer questions. In Prolog, information is represented using facts and rules. This experiment stores students, courses, and student enrolments as facts.

## Algorithm
1. Start SWI-Prolog.
2. Define facts for students and courses.
3. Define enrolment facts connecting students with courses.
4. Load the source file.
5. Query the knowledge base and observe the answers.

## Program
The source code is available in [student_course.pl](./student_course.pl).

## Sample Queries and Output

**1. Display all students**
```prolog
?- student(X).
```
Expected answers include:
```text
X = nirnay ;
X = riya ;
X = kabir ;
X = nitin ;
X = ishan.
```

**2. Find courses for Nirnay**
```prolog
?- enrolled(nirnay, Course).
```
```text
Course = ai ;
Course = prolog.
```

**3. Find all students enrolled in AI**
```prolog
?- enrolled(Student, ai).
```
```text
Student = nirnay ;
Student = kabir ;
Student = riya.
```

**4. Check whether Meera is a student**
```prolog
?- student(meera).
```
```text
false.
```

## Result
The student-course knowledge base was created using Prolog facts and queries.

## Conclusion
This experiment demonstrates how Prolog represents facts and answers queries through logical matching. Press `;` to request another answer when multiple results are available.