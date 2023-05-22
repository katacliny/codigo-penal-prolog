:- dynamic(detiene_en_contra_de_su_voluntad/2).

articulo_163_comete_delito_detencion_ilegal(Agresor, Agredido) :- 
    detiene_en_contra_de_su_voluntad(Agresor, Agredido).
