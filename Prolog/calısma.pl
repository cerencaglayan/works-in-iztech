len([], 0).
len([_ | Tail], N) :-
    len(Tail, N1),N is N1 + 1.

is_integer(0).
is_integer(X) :-
    Y is X-1,is_integer(Y).


animal(annen).
animal(baban).
g�l�m(annen).
likes(mary,X) :- g�l�m(X),!,fail.
likes(mary, X) :-
  animal(X).
