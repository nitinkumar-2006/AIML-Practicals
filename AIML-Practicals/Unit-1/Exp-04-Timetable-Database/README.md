# Experiment 4: Timetable Database in Prolog

## Aim

To develop a timetable database in Prolog and answer queries related to faculty, subjects, days, timings, and classrooms.

## Theory

A database stores information in an organized form so that it can be retrieved when required. In Prolog, facts represent stored information, while rules define relationships and help answer queries.

For this experiment, each timetable fact stores the faculty name, subject, day, time, and classroom. Rules are used to find the required information from the database.

## Algorithm

1. Start the program.
2. Create timetable facts containing faculty, subject, day, time, and classroom details.
3. Define rules to find subjects taught by a faculty member.
4. Define rules to find the classroom and faculty for a subject.
5. Define a rule to retrieve the schedule for a particular day.
6. Execute queries and observe the results.

## Program

The source code is available in [`timetable.pl`](./timetable.pl).

## Sample Queries and Output

**1. Find the subjects taught by Amit**

Query:
```prolog
?- faculty_subject(amit, Subject).
```

Output:
```text
Subject = ai ;
false.
```

**2. Find the classroom for AI on Monday**

Query:
```prolog
?- subject_classroom(ai, monday, Classroom).
```

Output:
```text
Classroom = room101.
```

**3. Find the faculty teaching Prolog**

Query:
```prolog
?- subject_faculty(prolog, Faculty).
```

Output:
```text
Faculty = neha ;
false.
```

**4. Display the schedule for Tuesday**

Query:
```prolog
?- day_schedule(tuesday, Faculty, Subject, Time, Classroom).
```

Output:
```text
Faculty = rahul,
Subject = mathematics,
Time = '09:00',
Classroom = room103 ;

Faculty = priya,
Subject = python,
Time = '11:00',
Classroom = room101.
```

Note: Press `;` in the Prolog console to request another answer. When no more answers are available, Prolog may display `false.`

## Result

A timetable database was created successfully, and queries were used to retrieve faculty, subject, and classroom information.

## Conclusion

This experiment demonstrated how Prolog facts and rules can represent timetable information and retrieve relevant details through logical queries.