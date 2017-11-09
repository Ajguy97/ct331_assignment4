%Definitions for isElementInList(El, List)

isElementInList(X,[X|_]).

isElementInList(X,[_|T]):-
			isElementInList(X,T).



%Definitions for reverseList(List, ReversedList)

%insertElementIntoListEnd(El, List, NewList)

%Definitions for mergeLists(List1, List2, Merged)
