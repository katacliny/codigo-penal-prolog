sentencia_articulo_169(Agresor, Agredido) :-
    articulo_169_comete_delito_de_amenaza(Agresor, Agredido),
    format("~w es culpable de amenaza articulo 169.", [Agresor]).
sentencia_articulo_144(Agresor) :-
    articulo_144_comete_delito_aborto(Agresor),
    format("~w es culpable de aborto articulo 144.", [Agresor]).
sentencia_articulo_172(Agresor, Agredido) :-
    articulo_172_comete_delito_de_coaccion(Agresor, Agredido),
    format("~w es culpable de coaccion articulo 172.", [Agresor]).
sentencia_articulo_163(Agresor, Agredido) :-
    articulo_163_comete_delito_detencion_ilegal(Agresor, Agredido),
    format("~w es culpable de detenciones articulo 163.", [Agresor]).
sentencia_articulo_138(Agresor, Agredido) :-
    articulo_138_comete_delito_homicidio(Agresor, Agredido),
    format("~w es culpable de hoicidio articulo 138.", [Agresor]).
sentencia_articulo_147(Agresor, Agredido, Objeto) :-
    articulo_147_comete_delito_lesiones(Agresor, Agredido, Objeto),
    format("~w es culpable de causar lesiones articulo 147.", [Agresor]).
sentencia_articulo_159(Agresor, Razon) :-
    articulo_159_comete_delito_de_manipulacion_genetica(Agresor, Razon),
    format("~w es culpable de manipulacion genetica articulo 159.", [Agresor]).

sentencia(Agresor, Agredido, Objeto) :-
    sentencia_articulo_169(Agresor, Agredido);
    sentencia_articulo_144(Agresor);
    sentencia_articulo_172(Agresor, Agredido);
    sentencia_articulo_163(Agresor, Agredido);
    sentencia_articulo_138(Agresor, Agredido);
    sentencia_articulo_147(Agresor, Agredido, Objeto).
