-module(first).
-export([double/1,mult/2, area/3, square/1, treble/1]).

mult(X,Y) ->
	X*Y.

double(X) ->
	mult(2,X).

area(A,B,C) ->
	S = (A+B+C)/2,
	math:sqrt(S*(S-A)*(S-B)*(S-C)).
	
square(X) ->
  mult(X, X).

treble(X) ->
  mult(3, X).

square_test() ->
  ?assertEqual(1, first:square(1)),
  ?assertEqual(4, first:square(2)),
  ?assertEqual(9, first:square(3)).