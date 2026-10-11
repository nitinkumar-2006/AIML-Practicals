
% Experiment 5: Student Classification

% Student marks
marks(aarav, 92).
marks(riya, 78).
marks(kabir, 45).
marks(meera, 30).
marks(ishan, 85).

% Classification rules
student_category(Student, topper) :-
    marks(Student, Marks),
    Marks >= 85.

student_category(Student, average) :-
    marks(Student, Marks),
    Marks >= 50,
    Marks < 85.

student_category(Student, fail) :-
    marks(Student, Marks),
    Marks < 50.