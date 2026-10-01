% ---- facts: car(Model, Price, Age, Colour, Mileage) -------------
car(chrysler, 130000, 3, red,   12000).
car(ford,      90000, 4, gray,  25000).
car(datsun,    80000, 1, red,   30000).

truck(ford,    80000, 6, blue,   8000).
truck(datsun,  50000, 5, orange,20000).
truck(toyota,  25000, 2, black, 25000).


can_buy(Cost) :-
    car(Model, C1, _, _, _),
    C1 < Cost,
    write('With '), write(C1),
    write(' you can purchase the car '), write(Model), nl.

can_buy(Cost) :-
    truck(Model, C2, _, _, _),
    C2 < Cost,
    write('With '), write(C2),
    write(' you can purchase the truck '), write(Model), nl.

% New rules (Cost and Colour)
can_buy(Cost, TargetColour) :-
    car(Model, C1, _, TargetColour, _),
    C1 < Cost,
    write('With '), write(C1),
    write(' you can purchase the '), write(TargetColour), write(' car '), write(Model), nl.

can_buy(Cost, TargetColour) :-
    truck(Model, C2, _, TargetColour, _),
    C2 < Cost,
    write('With '), write(C2),
    write(' you can purchase the '), write(TargetColour), write(' truck '), write(Model), nl.