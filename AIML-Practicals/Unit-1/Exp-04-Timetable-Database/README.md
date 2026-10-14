# Experiment 4: Timetable Database in Prolog

## Aim
To develop a timetable database in Prolog and answer queries related to faculty, subjects, days, timings, and classrooms.

## Theory
In Prolog, facts represent stored information, while rules retrieve related information. Each timetable fact stores faculty, subject, day, time, and classroom.

## Algorithm
1. Start SWI-Prolog and load `timetable.pl`.
2. Define timetable facts.
3. Query subjects taught by a faculty member.
4. Query the classroom or faculty for a subject.
5. Query all classes scheduled on a day.
6. Observe the results.

## Program
The source code is available in [timetable.pl](./timetable.pl).

## Sample Queries and Output

**1. Find subjects taught by Amit**
```prolog
?- faculty_subject(amit, Subject).
```
```text
Subject = ai ;
false.
```

**2. Find the classroom for AI on Monday**
```prolog
?- subject_classroom(ai, monday, Classroom).
```
```text
Classroom = room101.
```

**3. Find the faculty teaching Prolog**
```prolog
?- subject_faculty(prolog, Faculty).
```
```text
Faculty = neha ;
false.
```

**4. Display the schedule for Tuesday**
```prolog
?- day_schedule(tuesday, Faculty, Subject, Time, Classroom).
```
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

## Result
A timetable database was created and queried successfully using Prolog facts and rules.

## Conclusion
This experiment demonstrates how logical queries retrieve relevant faculty, subject, time, and classroom information from a Prolog database. Press `;` to request additional answers.