-module(pmatching).

-export([perimeter/1,area/1,enclose/1]).

%Shapes
%Define a function which takes a shape and returns the perimeter of the shape.

perimeter({R}) -> 
	
	2*R*3.1416; 

perimeter({H,W})-> 
	
	2*(W+H); 

perimeter({A,B,C})-> 
	
	A+B+C.

%Choose a suitable representation of triangles, and augment area/1 and perimeter/1 to handle this case too.

area({A,B,C}) -> 

	P = perimeter({A,B,C}) / 2,

	math:sqrt(P * (P - A) * (P - B) * (P - C)).

%Define a function enclose/1 that takes a shape an returns the smallest enclosing rectangle of the shape. 

enclose	({A,B,C}) when (A < B) and (B < C) ->

	{A,B};
	
enclose	({A,B,C}) when (A < C) and (C < B) ->

	{A,C};
	
enclose	({A,B,C}) when (B < C) and (C < A) ->

	{B,C};

enclose	({A,B,C}) when (B > C) and (C < A) ->

	{C,B};

enclose	({A,B,C}) when (B < C) and (C > A) ->

	{B,A};

enclose ({A,B,C}) when (A == B) and (B == C) ->

	{A,B}.

