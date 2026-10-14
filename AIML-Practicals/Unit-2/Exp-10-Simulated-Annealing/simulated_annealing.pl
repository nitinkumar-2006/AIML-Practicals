% Experiment 10: Simulated Annealing
% Integer search over -10..10. Uses a deterministic pseudo-random sequence
% to keep the practical reproducible without external libraries.

:- use_module(library(random)).

objective(X, Value) :-
    Value is -((X - 3) * (X - 3)) + 10 * sin(2 * X).

clamp(X, Low, High, Y) :-
    Y is max(Low, min(High, X)).

anneal(Start, BestX, BestValue) :-
    objective(Start, InitialValue),
    anneal_steps(100, 10.0, 0.95, Start, InitialValue, Start, InitialValue,
                 BestX, BestValue).

anneal_steps(0, _, _, _, _, BestX, BestValue, BestX, BestValue) :- !.
anneal_steps(Count, Temp, Cooling, CurrentX, CurrentValue, BestX0, BestValue0,
             BestX, BestValue) :-
    Step is random(3) - 1,
    Candidate0 is CurrentX + Step,
    clamp(Candidate0, -10, 10, Candidate),
    objective(Candidate, CandidateValue),
    Delta is CandidateValue - CurrentValue,
    ( Delta >= 0 -> Accept = true
    ; Probability is exp(Delta / Temp),
      random(R), (R < Probability -> Accept = true ; Accept = false)
    ),
    ( Accept == true -> NextX = Candidate, NextValue = CandidateValue
    ; NextX = CurrentX, NextValue = CurrentValue
    ),
    ( NextValue > BestValue0 -> BestX1 = NextX, BestValue1 = NextValue
    ; BestX1 = BestX0, BestValue1 = BestValue0
    ),
    NextTemp is Temp * Cooling,
    NextCount is Count - 1,
    anneal_steps(NextCount, NextTemp, Cooling, NextX, NextValue,
                 BestX1, BestValue1, BestX, BestValue).

% SWI-Prolog query: ?- anneal(0, X, Value).
