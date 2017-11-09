%Definitions for isElementInList(El, List)

isElementInList(X,[X|_]).

isElementInList(X,[_|T]):-
			isElementInList(X,T).



%Definitions for reverseList(List, ReversedList)

%base case
reverseList([],[]).

reverseList([H|T], ReversedList):-
	%we get the Tail of list and reverse it
    reverseList(T, ReversedT), 
	%after all tail is reversed concatenate reversed Tail with head
	%swi uses append/3 instead of conc/3
	append(ReversedT, [H], ReversedList).


%insertElementIntoListEnd(El, List, NewList)
%base case insert element into empty list returns list
%with single element
%insertElementIntoListEnd(El,[],[El]).

insertElementIntoListEnd(El,List,X):-
	append(List,[El],X).

%Definitions for mergeLists(List1, List2, Merged)
%base case
mergeLists([List1],[],[List1]).

mergeLists(List1,List2,Merged):-
		append(List1,List2,Merged).