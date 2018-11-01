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

% signature(nom_salle, capacite_salle, cours_dispense_dans_cette_salle)

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












