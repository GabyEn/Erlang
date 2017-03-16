-module(pattern).

-export([xor_1/2, xor_2/2, xor_3/2, max_three/3, how_many_equal/3]).

%Exclusive or
%In the previous video step on pattern matching we saw two ways of defining “exclusive or”. Give at least three others. You might find it useful to know that:
%=/= and == are the operations for inequality and equality in Erlang;
%not is the Erlang negation function; and,
%and and or are the Erlang conjunction and disjunction (infix) operators.

xor_1(X,Y) -> 
	
	X =/= Y.


xor_2(X,Y) -> 
	
	not (X == Y).


xor_3(X,Y) -> 
	
	((X == true) and (Y == false)) or ((X == false) and (Y == true)).


%Maximum of three
%Give a definition of the function maxThree which takes three integers and returns the maximum of the three. You can use the max function, which gives the maximum 
%of two numbers, in writing your definition.
%maxThree(34,25,36) = 36

max_three(X,Y,Z) ->
  
	max(max(X,Y),Z).


%How many equal?
%Give a definition of the function howManyEqual which takes three integers and returns an integer, counting how many of its three arguments are equal, so that:
%howManyEqual(34,25,36) = 0
%howManyEqual(34,25,34) = 2
%howManyEqual(34,34,34) = 3

how_many_equal(X,X,X) ->
	
		3;

how_many_equal(X,X,_) ->
	
		2;

how_many_equal(X,_,X) ->

		2;

how_many_equal(_,Y,Y) ->
	
		2;

how_many_equal(_,_,_) ->
	
		0.