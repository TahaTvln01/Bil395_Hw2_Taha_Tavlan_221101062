% Taha Tavlan 221101062

:- dynamic variable/2. 

calculate(Expression, Result) :-
    Expression =.. [Op, Left, Right], 
    member(Op, [+, -, *, /]), 
    calculate(Left, LVal),
    calculate(Right, RVal),
    Expr =.. [Op, LVal, RVal],
    Result is Expr.

calculate(Var, Value) :- 
    atom(Var), 
    get_value(Var, Value).

calculate(Number, Number) :- number(Number).

assign(Var, Expr) :-
    calculate(Expr, Result),
    retractall(variable(Var, _)), 
    assertz(variable(Var, Result)), 
    write(Var), write(' = '), write(Result), nl.

get_value(Var, Value) :-
    variable(Var, Value), !.
get_value(Var, Value) :-
    atom(Var),
    Value is 0.

start :-
    write('Prolog Calculator. Type "exit." to quit.'), nl,
    repeat,
    write('> '),
    read_line_to_string(user_input, InputString),
    term_string(Input, InputString),
    (Input == exit, ! ;
     process(Input), fail).

process(Var is Expr) :-
    assign(Var, Expr), !.

process(Expression) :-
    calculate(Expression, Result),
    write('Result: '), write(Result), nl, !.

process(_) :-
    write('Error: Invalid input'), nl.
