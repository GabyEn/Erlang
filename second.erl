-module(second).

-export([hypotenuse/2,perimeter/2,area/2]).


hypotenuse(X,Y) ->

	math:sqrt(first:mult(X,X) + first:mult(Y,Y)).



perimeter(X, Y) ->
	
	X + Y + hypotenuse(X,Y).

	

area(X,Y) ->

	(X*Y)/2.