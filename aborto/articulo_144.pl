:- dynamic(aplica_violencia_para_realizar_aborto/1).
:- dynamic(aplica_amenaza_para_realizar_aborto/1).
:- dynamic(aplica_engano_para_realizar_aborto/1).
:- dynamic(practica_aborto_sin_consentimiento/1).


articulo_144_comete_delito_aborto(Agresor) :-
    aplica_violencia_para_realizar_aborto(Agresor);
    aplica_amenaza_para_realizar_aborto(Agresor);
    aplica_engano_para_realizar_aborto(Agresor);
    practica_aborto_sin_consentimiento(Agresor).
