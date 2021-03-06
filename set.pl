use_module(library(clpfd)).

:- op(500, xfy, [∈, ∉]).
:- op(550, xfy, [⊆]).
:- op(600, xfy, [→]).

%X ∈ [X|_].
%X ∈ [_|Xs] :- X ∈ Xs.

/*
a ∈ s.
b ∈ s.
c ∈ s.

a ∈ t.
b ∈ t.
*/

/*
 pair axiom. there is a set containing x and y.
 union. there is a set with all the elements from two sets
*/

/* intersection */
/*X ∈ T :- X ∈ R, X ∈ S.*/


X ∈ A :- member(X, A).
X ∉ A :- forall(Y ∈ A, X \= Y).

/* more like sublist than subset.*/

[]    ⊆ _.
[X|A] ⊆ B :- A ⊆ B, X ∈ B, X ∉ A. 

/*
% does not halt for X ⊆ [a, b, c] 
% P → Q :- \+ (P, \+ Q).

P → Q :- (\+ P ; Q) , !.


% P → Q :- P, Q, !.
% P → _ :- \+ P, ! .

% P → Q :- \+ P, Q, !.
% P → Q :- \+ P, \+ Q, !.
% P → Q :- P   , Q .

%_ → Q :- Q, !.


A ⊆ B :- X ∈ A → X ∈ B.
*/

%size(S, 0)     :- X ∉ S.
%size(S, N + 1) :- X ∈ S, size(T, N), X ∉ T.

% A ⊆ B :- forall(X ∈ A , X ∈ B).

% A ⊆ B :- X ∈ B, X ∈ A.
% A ⊆ B :- X ∈ B, X ∉ A.
% A ⊆ B :- X ∉ A, X ∉ B.

% not really a k-combination more like a k-permutation
combination(C, K, A) :- length(A, N),
                        between(0, N, K),
                        length(C, K),
                        C ⊆ A.

member_valid :- a ∈ [a],
                a ∈ [b, a],
                \+ (a ∈ []),
                \+ (c ∈ [a, b]).


non_member_valid :- a ∉ [],
                    b ∉ [a],
                    c ∉ [b, a],
                    \+ (a ∉ [b, a]).

subset_valid :- [] ⊆ [a, b, c],
                [b, a, c] ⊆ [a, b, c],
                \+ [a, b] ⊆ [a].



% ==== Graveyard ====


%:- op(450, xfy, [∧]).
%:- op(475, xfy, [∨]).
%:- op(600, xfy, [→]).

%_ ∉ [].
%X ∉ [Y|A] :- X ∉ A, X \= Y.

%X ∉ A :- \+ X ∈ A.
%X ∉ A :- \+ X ∈ A


% P ∨ Q :- P; Q.

%P ∨ _ :- P.
%_ ∨ Q :- Q.

%P ∧ Q :- P, Q.

%A ⊆ B :- X ∈ A → X ∈ B.

%A ⊆ B :- X ∈ A #==> X ∈ B.

%A ⊆ B :- X ∉ A ∨ X ∈ B.

% doesn't find solutions, only correctly evaluates subset expressions
%A ⊆ B :- forall(X ∈ A, X ∈ B).

% A ⊆ B :- foreach(X ∈ A , X ∈ B).




