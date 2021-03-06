%FICHIER REGROUPANTS LES PREDICATS, DEFINITIONS DU PROJETS
%POSSIBILITE D AJOUT ET DE SUPRESSIONS DE DONNES
%CONTIENT : LISTES DES COURS, LES TYPES DE COURS, LISTE DES PROFESSEURS, LISTES GROUPES (OU CLASSES), LISTES DES SALLES DE L ECOLE
%ENSEMBLE DES SEANCES DE COURS QUE LES ELEVES DOIVENT SUIVRE, LES CRENEAUX SUR LESQUELS SE DEROULENT LES COURS, SYSTEME DE DATE


%
%%                                     
%%% Matières GM %%%
%%
%

%matiere info%
%
matiere(C++).
matiere(C).
matiere(programmation_logique_contrainte).
matiere(java).
matiere(techno_web).
matiere(base_de_donnee).

%matiere opti%
%
matiere(controle_optimal).
matiere(statistiques).
matiere(calcul_stochastique).
matiere(optimisation_combinatoire).
matiere(regression_non_lineaire).
matiere(probabilite).
matiere(markov).
matiere(signal).

%matiere huma%
%
matiere(anglais).
matiere(espagnol).
matiere(sport).
matiere(theatre).
matiere(allemand).
matiere(gestion).

%matiere mnsn%
%
matiere(equation_hamilton_jacobi).
matiere(mnedp1).
matiere(mnedp2).
matiere(analyse_numerique).
matiere(resolution_systeme_lineaire).
matiere(calcul_scientifique).
matiere(analyse_fonctionnelle).
matiere(calcul_parallele).
matiere(b_splines).

%
%%                                     
%%% Professeur GM %%%
%%
%

professeur(abdulrab).
professeur(portier).
professeur(fortier).
professeur(tonnoir).
professeur(godichon).
professeur(forcadel).
professeur(gleyse).
professeur(caputo).
professeur(gout).
professeur(el_machkouri).
professeur(el_assoudi).
professeur(knippel).
professeur(milou).
professeur(boutigny).
professeur(le_guyader).
professeur(vercouter).
professeur(chaignaud).
professeur(borel).
professeur(merieux).
professeur(zanni_merk).
professeur(fourati).
professeur(dubois).
professeur(marx).


%
%%                                     
%%% Creneaux cours GM %%%
%%
%

%correspond aux dates débuts fin du cours, comprends une pause dejeuner%
% a adapter au quart d heure près%

creneau(1, '08h00', '09h30').
creneau(2, '09h45', '11h15').
creneau(3, '11h30', '13h00').
creneau(4, '13h00', '14h30').
creneau(5, '15h', '16h30').
creneau(6, '16h45', '18h15').
creneau(7, '18h30', '20h00').


%
%%                                     
%%% Format creneaux GM %%%
%%
%

formatCreneau(cm).
formatCreneau(projet).
formatCreneau(td).
formatCreneau(tp).
formatCreneau(ds).


%
%%                                     
%%% Liste des salles INSA GM %%%
%%
%

% signature(nom_salle, capacite_salle, cours_dispense_dans_cette_salle) %

%bougainville%
salle(bo_203, 30, [tp, td, projet]).
salle(bo_205, 30, [tp, td, projet]).
salle(bo_003, 15, [projet]).
salle(bo_005, 15, [projet]).
salle(bo_210, 30, [td]).

%magellan%
salle(MA_I_R1_07, 30, [td]).
salle(MA_I_R1_08, 30, [td]).
salle(MA_E_R1_09, 60, [td, cm]).
salle(MA_E_R1_07, 30, [td]).
salle(MA_G_RC_05, 250, [td, cm, ds]).
salle(MA_G_RC07, 150, [td, cm, ds]).
salle(MA_H_R1_207, 25, [td, tp, projet]).
salle(MA_E_R1_209, 20, [td, tp, projet]).
salle(MA_HR_107, 80, [td, cm, ds]).

%dumont durville%
salle(DU_RJ_08, 30, [td]).
salle(DU_RJ_09, 30, [td]).
salle(DU_RJ_10, 30, [td]).
salle(DU_RJ_03, 100, [cm]).
salle(DU_RJ_02, 100, [cm]).
salle(DU_RJ_04, 100, [cm,ds]).


%
%%                                     
%%% Liste des groupes INSA GM %%%
%%
%

% signature(nom_groupe, effectif) %

groupe(GM3a,22).
groupe(GM3b,27).
groupe(GM3,59).
groupe(GM4a,28).
groupe(GM4b,17).
groupe(GM4,45).
groupe(GM5a,12).
groupe(GM5b,18).
groupe(GM5,30).


%
%
%%%% PARTIE SUR LES DATES 
%
%


%
%%                                     
%%% Liste des mois cours INSA %%%
%%
%

%index 1 = septembre, 10=juin%

mois(1).
mois(2).
mois(3).
mois(4).
mois(5).
mois(6).
mois(7).
mois(8).
mois(9).
mois(10).


%nombre de jours scolaire par mois%
% ex jour= 1 lundi 1er septembre, jour6=lundi 8 septembre, jour 10= mercredi 10 septembre etc%
%approximativement 20jours car 4 semaines de 5 jours scolaire% 
joursParMois(20).

%definition du jour + mois scolaire%
%condition pour verifier que le jour est bien défini%
%ex: date(28,2) non def, (4,189) non def, (4,4) bien def%
date(J, M) :-
    mois(M),
    joursParMois(Max),
    between(1, Max, J).


%Date BEFORE and Date AFTER

dateBefore( _, M1,  _, M2) :- M1 < M2, !.
dateBefore(J1, M1, J2, M2) :- M1 = M2, J1 < J2, !.

dateAfter( _, M1,  _, M2) :- M1 > M2, !.
dateAfter(J1, M1, J2, M2) :- M1 = M2, J1 > J2, !.

%
%%                                     
%%% Liste séance de cours à suivre GM INSA %%%
%%
%

% signature(nom_du_cours, matiere, professeur, Type, groupe) %


%cours optimisation_combinatoire%
cours('CM_OPTI', optimisation_combinatoire, knippel, cm, GM4).
cours('TD1_OPTI', optimisation_combinatoire, knippel, td, GM4a).
cours('TD2_OPTI', optimisation_combinatoire, knippel, td, GM4b).
cours('DS_OPTI', optimisation_combinatoire, knippel, ds, GM4).

%cours mnedp1%
cours('CM_mnedp1', mnedp1, gout, cm, GM4).
cours('TD1_mnedp1', mnedp1, gout, td, GM4a).
cours('TD2_mnedp1', mnedp1, gout, td, GM4b).



salle(S, N) :- salle(S, N, _).


%type de cours acceuilli par la salle
%member(a,L) true si a est dans L false sinon%
accueille(Salle, Type) :-
    member(Type, ListTypeCours),
    salle(Salle, _, ListTypeCours).
    


%rappel/definition STACKOVERFLOW
%In Prolog, predicates are identified by their name (or functor) and their number of arguments (or arity). %
%Thus, items/1 denotes a predicate with functor items and arity 1 %
%while location/2 denotes a predicate with functor location and ar%ity 2. %
%Two predicates with the same functor but different arities are different predicates.%

%:- dynamic en fonction du nombre d arguments%

%signature (id_seance, type, matiere, nom_cours)
:- dynamic seance/4.

%participation d un groupe de classe a un cours (seance de cours)
%signature (groupe, id_seance)
:- dynamic groupeSeance/2.

%participation d un professeur a un cours (seance de cours)
:- dynamic profSeance/2.


%
%% IL FAUDRAIT PENSER A AJOUTER UN ORDRE DANS LA SUCCESSION DES COURS%
%% UN DS NE PEUT PAS AVOIR LIEUX AVANT QUE TOUS LES TD ET CM AIENT ETE EFFECTUES PAR EXEMPLE 
%

%On pourrait définir un enchainement de séance de cours%

%
%%                                     
%%% enchainement logique de 2 seances de cours GM INSA %%%
%%
%

% signature(cours_apres, cours_avant) %

:- dynamic ordreSeance/2.

ordreSeance(TD1_OPTI, CM_OPTI ).
ordreSeance(TD2_OPTI, CM_OPTI ).
ordreSeance(DS_OPTI, TD1_OPTI).
ordreSeance(DS_OPTI, TD2_OPTI).

%
%%
%%%
%%%% ECRITURE
%%%
%%
%

computeProfSeance(P, Cours) :-
    \+ is_list(P),
    assertz(profSeance(P, Cours)).
computeProfSeance([], _).
computeProfSeance([P|Profs], Cours) :- % si plusieurs profs par séance
    computeProfSeance(P, Cours),
    computeProfSeance(Profs, Cours).


computeSeance(Nom, Mat, Profs, Type, Groupe, [X]) :-
    computeProfSeance(Profs, X),
    assertz(groupeSeance(Groupe, X)),
    assertz(seance(X, Type, Mat, Nom)).
computeSeance(Nom, Mat, Profs, Type, Groupe, [X, Y|S]) :-
    (ordreSeance(Y, X, _, _); assertz(ordreSeance(Y, X))),
    computeSeance(Nom, Mat, Profs, Type, Groupe, [X]),
    computeSeance(Nom, Mat, Profs, Type, Groupe, [Y|S]).    

:- forall(
    cours(Nom, Mat, Prof, Type, Groupe),
    (
        computeSeance(Nom, Mat, Prof, Type, Groupe, Ids)
    )
).