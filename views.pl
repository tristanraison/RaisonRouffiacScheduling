%AFFICHAGE TERMINAL DE CERTAINS ELEMENTS




%Affichage terminal d une seance%
seanceDisplaying(S) :-
    seance(S, Type, Matiere, Nom),
    write('Séance:\t\t'),
    write(S), write(' "'), write(Nom), write('"'),
    write(' - '), write(Type),
    write(' - '), write(Matiere).


%Affichage du creneau sur lequel se deroule la seance%
timeDisplaying(J, M, H) :- 
    plage(H, Start, End),
    write('Date:\t\t'),
    write(J), write('/'), write(M),
    write(' '), write ('heure'),write(Start), write('-'), write(End).

%Affichage d une salle%
roomDisplaying(R) :-
    salle(R, Capacity),
    write('Salle:\t\t'), write(R), write('('), write(Capacity), write(')').
