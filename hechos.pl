:- consult("aborto/articulo_144.pl").
:- consult("amenazas/articulo_169.pl").
:- consult("coaccion/articulo_172.pl").
:- consult("detenciones/articulo_163.pl").
:- consult("homicidio/articulo_138.pl").
:- consult("lesiones/articulo_147.pl").
:- consult("manipulacion_genetica/articulo_159.pl").
:- consult("sentencias.pl").

tiene_objeto(pedro, cuchillo).
es_agredido(juan, pedro).
aplica_violencia(pedro).
impidie_hacer_lo_que_la_ley_no_prohibe(pedro, juan).
amenaza_homicidio(pedro, juan).
conoce(pedro, maria).
conoce(maria, miguel).
conoce(miguel, juan).
hay_vinculo_entre_el_agresor_y_la_victima(Agresor, Agredido) :-
    conoce(Agresor, Agredido).
hay_vinculo_entre_el_agresor_y_la_victima(Agresor, Agredido) :-
    conoce(Agresor, Conocido),
    hay_vinculo_entre_el_agresor_y_la_victima(Conocido, Agredido).




