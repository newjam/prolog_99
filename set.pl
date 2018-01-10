

:- op(450, xfy, [∧]).
:- op(475, xfy, [∨]).
:- op(500, xfy, [∈, ∉]).
:- op(550, xfy, [⊆]).
:- op(600, xfy, [→]).

%X ∈ [X|_].
%X ∈ [_|Xs] :- X ∈ Xs.

X ∈ A :- member(X, A).

%_ ∉ [].
%X ∉ [Y|A] :- X ∉ A, X \= Y.

X ∉ A :- \+ member(X, A).

P ∨ _ :- P.
_ ∨ Q :- Q.

P ∧ Q :- P, Q.

% doesn't halt for X ⊆ [a, b, c] 
P → Q :- \+ (P, \+ Q).

%P → Q :- (\+ P ; Q) , !.

%P → Q :- P, Q, !.
%P → _ :- \+ P, ! .

%P → Q :- \+ P, Q, !.
%P → Q :- \+ P, \+ Q, !.
%P → Q :- P   , Q .

%_ → Q :- Q, !.

A ⊆ B :- X ∈ A → X ∈ B.

