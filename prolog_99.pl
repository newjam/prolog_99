% P01 (*) Find the last element of a list.

my_last(X, [_|XS]) :- my_last(X, XS).
my_last(X, XS)     :- XS = [X|[]].

% P03 find the element of a list.

element_at(X, [X|_] , K) :- K = 0 .
element_at(X, [_|XS], J) :- element_at(X, XS, K), J is K + 1.

% P04 Find the number of elements of a list.

my_length(N, [])     :- N = 0.
my_length(M, [_|XS]) :- my_length(N, XS), M is N + 1.

% P05 Reverse a list.

my_front(FRONT, ALL, LAST)         :- ALL = [LAST|[]], FRONT = [].
my_front([Y|FRONT], [Y|ALL], LAST) :- my_front(FRONT, ALL, LAST).

my_back(BACK, ALL, FIRST) :- ALL = [FIRST | BACK].

my_reverse(XS, YS) :- XS = [], YS = [].
my_reverse(XS, YS) :- my_back(FRONT, XS, FIRST),
                      my_front(BACK, YS, LAST),
					  FIRST = LAST,
					  my_reverse(FRONT, BACK).

% P06 (*) Find out whether a list is a palindrome.

palindrome(XS) :- my_reverse(XS, XS).

