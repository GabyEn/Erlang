%Fibonacci numbers
%Give a recursive definition of the function fib/1 computing the Fibonacci numbers, and give a step-by-step evaluation of fib(4).
%
%xn = xn-1 + xn-2
%
%fib(4)
%fib(3) + fib(2)
%(fib(2) + fib(1)) + (fib(1) + fib(0))
%(fib(1) + fib(0) + fib(1)) + (fib(1) + fib(0))
%3
%
-module(recex).
-export([fib/1,pieces/1]).

fib(0) ->
	
	0;

fib(1) ->

	1;

fib(2) ->

	1;

fib(N) when N > 2 ->

	fib(N-1) + fib(N-2).

	
%How many pieces?
%
%Define a function pieces so that pieces(N) tells you the maximum number of pieces into which you can cut a piece of paper with N straight line cuts.
%
%lazy caterer's sequence
%
%pieces(3)
% 3 + pieces(2)
% 3 + 2 + pieces(1)
% 3 + 2 + 1 + pieces(0)
% 3 + 2 + 1 + 1
% 7

pieces(0) ->
	
	1;

pieces(N) when N > 0 ->

	N + pieces(N-1).
