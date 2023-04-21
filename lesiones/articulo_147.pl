:- dynamic(tiene_objeto/2).
:- dynamic(es_agredido/2).
%-----------------------------------------------------FACTS EXAMPLES

% Predicado auxiliar para determinar si una persona posee un objeto en particular
% En este ejemplo, se supone que Pedro siempre tiene una botella
% Si Pedro puede tener diferentes objetos, esta regla debe ser modificada
% tiene_objeto(pedro, cuchillo).

% Predicado auxiliar para determinar si una persona es el agredido
% En este ejemplo, se supone que Juan es el agredido
% Si hay más de una persona en el escenario, esta regla debe ser modificada
% es_agredido(juan, pedro).

%-----------------------------------------------------END EXAMPLE
% Predicado auxiliar para determinar si un objeto es un objeto de agresión
% En este ejemplo, se supone que cualquier objeto puede ser utilizado como objeto de agresión
% Si se quiere restringir los objetos que se pueden utilizar como objeto de agresión, esta regla debe ser modificada
es_objeto_agresion(_).

% Predicado auxiliar para determinar si una persona requiere tratamiento por la lesión causada
% En este ejemplo, se supone que toda lesión requiere tratamiento
% Si se quiere ser más específico, esta regla debe ser modificada
requiere_tratamiento(_).

% Predicado auxiliar para determinar si un objeto es una persona
% En este ejemplo, se supone que sólo hay personas en el escenario
% Si hay otros tipos de objetos en el escenario, esta regla debe ser modificada
es_persona(_).

% Predicado principal que determina si una persona ha cometido un delito de lesiones
articulo_147_comete_delito_lesiones(Agresor, Agredido, Objeto) :-
    causa_lesion(Agresor, Objeto),
    requiere_tratamiento(Agredido).

% Predicado auxiliar para determinar si una persona ha causado una lesión a otra persona
causa_lesion(Agresor, Objeto) :-
    utiliza_objeto(Agresor, Objeto),
    es_objeto_agresion(Objeto),
    es_agredido(_, Agresor).

% Predicado auxiliar para determinar si una persona ha utilizado un objeto para agredir a otra persona
utiliza_objeto(Agresor, Objeto) :-
    tiene_objeto(Agresor, Objeto),
    es_objeto_agresion(Objeto).
