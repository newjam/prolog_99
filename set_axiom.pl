

:- op(450, xfy, [∧]).
:- op(475, xfy, [∨]).
:- op(500, xfy, [∈, ∉]).
:- op(550, xfy, [⊆]).
:- op(600, xfy, [→, ↔]).

set(emptyset).
%set(foo).
%set(bar).

% f is really the emptyset
%emptyset ∈ foo.
%foo ∈ bar.

% :- X ∈ emptyset.

% versus
%X ∉ emptyset :- set(X).

X ∈ emptyset :- set(X), false.

X ∉ A :- \+ X ∈ A.

P ∨ Q :- P; Q. 

%P ∨ _ :- P.
%_ ∨ Q :- Q.
%P ∧ Q :- P, Q.

P → Q :- \+ (P, \+ Q).
P ↔ Q :- P → Q, Q → P.

% axiom of extensionality
%eq(X, Y) :- Z ∈ X ↔ Z ∈ Y.
X ∈ W ↔ Y ∈ W :- Z ∈ X ↔ Z ∈ Y.

%eq(X, Y) :- X ∈ W ↔ Y ∈ W.

X ∈ 

% Unordered Pair Axiom
X ∈ C ∨ Y ∈ C :- set(X), set(Y), set(C).

A ⊆ B :- X ∈ A → X ∈ B, set(A), set(B).

