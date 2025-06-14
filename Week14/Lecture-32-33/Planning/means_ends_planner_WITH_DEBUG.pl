
:- consult('planning_BlocksWorld.pl').


%
% Figure 17.4 - A simple means-ends planner.
%


% A simple means-ends planner
% plan(State, Goals, Plan, FinalState)
plan(State, Goals, [], State) :-    % Plan empty
	satisfied(State, Goals).        % Goals true in State


plan(State, Goals, Plan, FinalState) :-
	%/////// DEBUG ///////
	writeln('### Call plan'),
%	writeln('Before append(Plan, _, _)'),
%	write('State = '), writeln(State),
%	write('Plan = '), writeln(Plan),
%	writeln(''),
	%///////  

	append(Plan, _, _),                           % Try plans of increasing length
	
	%/////// DEBUG ///////
%	writeln('After append(Plan, _, _)'),
%	write('State = '), writeln(State),
%	write('Plan = '), writeln(Plan),
%	writeln(''),
	%///////    
	                       
	append(PrePlan, [Action | PostPlan], Plan),   % Divide Plan to PrePlan, Action and PostPlan

	%/////// DEBUG ///////
%	writeln('After append(PrePlan, [Action | PostPlan], Plan)'),
%	write('PrePlan = '), writeln(PrePlan),
%	write('Action = '), writeln(Action),
%	write('PostPlan = '), writeln(PostPlan),
%	write('Plan = '), writeln(Plan),
%	writeln(''),
	%///////    
		
	select(State, Goals, Goal),                   % Select a goal
	achieves(Action, Goal),                       % Relevant action
	can(Action, Condition), 
	
	%/////// DEBUG ///////
	writeln('--> Selected Action (Before calling plan): can(Action, Condition), '),
	write('Action = '), writeln(Action),
	write('Condition = '), writeln(Condition),
	write('Goal = '), writeln(Goal),
	writeln(''),
	%///////  
	
	
	%/////// DEBUG ///////
	writeln('Before plan(State, Condition, PrePlan, MidState1)'),
	write('State = '), writeln(State),
	write('Condition = '), writeln(Condition),
	write('PrePlan = '), writeln(PrePlan),
	write('MidState1 = '), writeln(MidState1),
	writeln(''),
	%///////  
	                
	plan(State, Condition, PrePlan, MidState1),   % Enable Action

	%/////// DEBUG ///////
	writeln('--> Enable Action'),
	write('State = '), writeln(State),
	write('Condition = '), writeln(Condition),
	write('PrePlan = '), writeln(PrePlan),
	write('MidState1 = '), writeln(MidState1),

	writeln('--> Selected Action (After calling plan for building PrePlan):'),
	write('Action = '), writeln(Action),
	write('Condition = '), writeln(Condition),
	write('Goal = '), writeln(Goal),
	writeln(''),
	%///////

	apply(MidState1, Action, MidState2),          % Apply Action
	
	%/////// DEBUG ///////
	writeln('===> Before calling plan for building PostPlan:'),
	write('MidState1 = '), writeln(MidState1),
	write('MidState2 = '), writeln(MidState2),
	write('Goals = '), writeln(Goals),
	write('PostPlan = '), writeln(PostPlan),
	write('Action = '), writeln(Action),
	writeln(''),
	%///////
		
	plan(MidState2, Goals, PostPlan, FinalState), % Achieve remaining goals

	%/////// DEBUG ///////
	writeln(''),
	write('MidState2 = '), writeln(MidState2),
	write('Goals = '), writeln(Goals),
	write('PostPlan = '), writeln(PostPlan),
	write('Action = '), writeln(Action),
	writeln('').
	%///////



% satisfied(State, Goals): Goals are true in State
satisfied(State, []).

satisfied(State, [Goal | Goals]) :-
	member(Goal, State),
	satisfied(State, Goals).

select(State, Goals, Goal) :-
	member(Goal, Goals),
	\+ member(Goal, State),   % Goal not satisfied already
	%/////// DEBUG ///////
	writeln(''),
	write('   --> Select next Goal: '), writeln(Goal),
	write('State: '), writeln(State),
	write('Goals: '), writeln(Goals),
	writeln('').
	%///////
	

% achieves(Action, Goal): Goal is in add-list of Action
achieves(Action, Goal) :-
	adds(Action, Goals),
	member(Goal, Goals).

% apply(State, Action, NewState): Action executed in State produces NewState
apply(State, Action, NewState) :-
	deletes(Action, DelList),
	delete_all(State, DelList, State1), !,
	adds(Action, AddList),
	append(AddList, State1, NewState),
	%/////// DEBUG ///////
	writeln(''),
	writeln('After apply'),
	write('State: '), writeln(State),
	write('Action: '), writeln(Action),
	write('NewState: '), writeln(NewState),	
	writeln('').
	%///////


% delete_all(L1, L2, Diff) if Diff is set-difference of L1 and L2
delete_all([], _, []).

delete_all([X | L1], L2, Diff) :-
	member(X, L2), !,
	delete_all(L1, L2, Diff).

delete_all([X | L1], L2, [X | Diff]) :-
	delete_all(L1, L2, Diff).


/*
?- Start = [ clear(2), clear(4), clear(b), clear(c), on(a, 1), on(b, 3), on(c, a) ], 
plan(Start, [on(a, b)], Plan, FinState).

 Plan = [ move(c, a, 2), move(a, 1, b) ]
 FinState = [ on(a, b), clear(1), on(c, 2), clear(a), clear(4), clear(c), on(b, 3) ]
*/


% Let us try the task in Figure 17.1. The initial state in Figure 17.1 is
% defined by the predicate statel in Figure 17.2. So the task of Figure 17.1 can be
% solved by:
%
%?- state1(Start), plan(Start, [on(a, b), on(b, c)], Plan, _).
%
% This produces a surprising answer:
%
% Plan = [ move(c, a, 2), move(b, 3, a), move(b, a, c), move(a, 1, b) ]
%














































