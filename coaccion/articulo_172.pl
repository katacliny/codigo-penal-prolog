:- dynamic(aplica_violencia/2).
:- dynamic(impidie_hacer_lo_que_la_ley_no_prohibe/2).
:- dynamic(compeliere_a_efectuar_lo_que_no_quiere/2).

% Predicado auxiliar para determinar si una persona comete delito de coaccion
% En este ejemplo, se supone que para toda persona la respuesta es si
% Si se quiere ser más específico, esta regla debe ser modificada
no_legitimamente_autorizado(_).


articulo_172_comete_delito_de_coaccion(Agresor, Agredido) :- 
    no_legitimamente_autorizado(Agresor),
    aplica_violencia(Agresor),
    impidie_hacer_lo_que_la_ley_no_prohibe(Agresor, Agredido);
    compeliere_a_efectuar_lo_que_no_quiere(Agresor, Agredido).