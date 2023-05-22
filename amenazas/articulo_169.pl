:- dynamic(amenaza_homicidio/2).
:- dynamic(amenaza_lesiones/2).
:- dynamic(amenaza_aborto/2).
:- dynamic(amenaza_contra_la_libertad/2).
:- dynamic(amenaza_torturas/2).
:- dynamic(amenaza_contra_la_integridad_moral/2).
:- dynamic(amenaza_la_libertad_sexual/2).
:- dynamic(amenaza_la_intimidad/2).
:- dynamic(amenaza_el_honor/2).
:- dynamic(amenaza_el_patrimonio/2).
:- dynamic(amenaza_el_orden_socioeconomico/2).


articulo_169_comete_delito_de_amenaza(Agresor, Agredido) :- 
    amenaza_homicidio(Agresor, Agredido); 
    amenaza_lesiones(Agresor, Agredido);
    amenaza_aborto(Agresor, Agredido); 
    amenaza_contra_la_libertad(Agresor, Agredido);
    amenaza_torturas(Agresor, Agredido);
    amenaza_contra_la_integridad_moral(Agresor, Agredido);
    amenaza_la_libertad_sexual(Agresor, Agredido);
    amenaza_la_intimidad(Agresor, Agredido);
    amenaza_el_honor(Agresor, Agredido);
    amenaza_el_patrimonio(Agresor, Agredido); 
    amenaza_el_orden_socioeconomico(Agresor, Agredido).