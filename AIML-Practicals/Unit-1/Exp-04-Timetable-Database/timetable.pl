
% Experiment 4: Timetable Database

% timetable(Faculty, Subject, Day, Time, Classroom)

timetable(amit, ai, monday, '09:00', room101).
timetable(neha, prolog, monday, '10:00', room102).
timetable(rahul, mathematics, tuesday, '09:00', room103).
timetable(priya, python, tuesday, '11:00', room101).
timetable(amit, ai, wednesday, '10:00', room104).
timetable(neha, prolog, thursday, '12:00', room102).
timetable(rahul, mathematics, friday, '09:00', room103).

% Find the subjects taught by a faculty member
faculty_subject(Faculty, Subject) :-
    timetable(Faculty, Subject, _, _, _).

% Find the classroom for a subject on a given day
subject_classroom(Subject, Day, Classroom) :-
    timetable(_, Subject, Day, _, Classroom).

% Find the faculty teaching a subject
subject_faculty(Subject, Faculty) :-
    timetable(Faculty, Subject, _, _, _).

% Find all classes scheduled on a given day
day_schedule(Day, Faculty, Subject, Time, Classroom) :-
    timetable(Faculty, Subject, Day, Time, Classroom).