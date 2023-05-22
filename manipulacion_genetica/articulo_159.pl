:- dynamic(altera_genotipo/1).

% Predicado auxiliar para determinar si una persona comete delito de manipulación genética
% En este ejemplo, se supone que para toda persona la respuesta es si
% Si se quiere ser más específico, esta regla debe ser modificada
intervencion_con_caracter_malicioso(_).

% Predicado auxiliar para determinar si una persona comete delito de manipulación genética
% En este ejemplo, se supone que para toda persona la respuesta es si
% Si se quiere ser más específico, esta regla debe ser modificada
intervencion_por_imprudencia_grave(_).

articulo_159_comete_delito_de_manipulacion_genetica(Persona, Razon) :- 
    altera_genotipo(Persona),
    intervencion_con_caracter_malicioso(Razon);
    intervencion_por_imprudencia_grave(Razon).
