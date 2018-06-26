
(define (domain ejercicio2)
  (:requirements :strips :typing :fluents)
  (:types zona orientacion locatable - object
      jugador personaje objeto - locatable 
  )
  (:predicates (Conectada ?x - zona ?y - zona ?o - orientacion)
        (Orientado ?j - jugador ?o - orientacion)
        (SituadoEn ?j - locatable ?x - zona)
        (ObjetoCogido ?j - jugador ?b - objeto)
        (ManoLibre ?j - jugador)
        (EsperandoObjeto ?p - personaje)
        )
  (:functions
    (Distancia ?x ?y - zona)
    (DistanciaTotal)
  )

(:action girarIzquierda
  :parameters (?j - jugador ?o - orientacion)
  :precondition (and (Orientado ?j ?o))
  :effect (and 
    (when (and (Orientado ?j norte))
      (and (Orientado ?j oeste) (not(Orientado ?j norte)))
    )

    (when (and (Orientado ?j oeste))
      (and (Orientado ?j sur) (not(Orientado ?j oeste)))
    )

    (when (and (Orientado ?j sur))
      (and (Orientado ?j este) (not(Orientado ?j sur)))
    )

    (when (and (Orientado ?j este))
      (and (Orientado ?j norte) (not(Orientado ?j este)))
    )
  )
 )

(:action girarDerecha
  :parameters (?j - jugador ?o - orientacion)
  :precondition (and (Orientado ?j ?o))
  :effect (and 
    (when (and (Orientado ?j norte))
      (and (Orientado ?j este) (not(Orientado ?j norte)))
    )

    (when (and (Orientado ?j este))
      (and (Orientado ?j sur) (not(Orientado ?j este)))
    )

    (when (and (Orientado ?j sur))
      (and (Orientado ?j oeste) (not(Orientado ?j sur)))
    )

    (when (and (Orientado ?j oeste))
      (and (Orientado ?j norte) (not(Orientado ?j oeste)))
    )
  )
 )

 (:action ir
  :parameters (?j - jugador ?x - zona ?y - zona ?o - orientacion)
  :precondition ( and (SituadoEn ?j ?x)
          (Orientado ?j ?o) 
          (Conectada ?x ?y ?o)
         )
  :effect (and
      (SituadoEn ?j ?y) (not(SituadoEn ?j ?x)) 
      (increase (DistanciaTotal) (Distancia ?x ?y))
      )
 )

(:action coger
  :parameters(?j - jugador ?b - objeto ?x - zona )
  :precondition (and  (ManoLibre ?j)
            (SituadoEn ?j ?x)
            (SituadoEn ?b ?x)
          )
  :effect (and
       (not(SituadoEn ?b ?x)) (ObjetoCogido ?j ?b)
       (not (ManoLibre ?j))
       
      )
 )

 (:action dejar
  :parameters(?j - jugador ?b - objeto ?x - zona)
  :precondition (and 
            (SituadoEn ?j ?x)
            (ObjetoCogido ?j ?b)
          )
  :effect (and
       (SituadoEn ?b ?x) (not (ObjetoCogido ?j ?b))
       (ManoLibre ?j)
      )
 )

 (:action entregar
  :parameters(?j - jugador ?b - objeto ?x - zona ?p - personaje)
  :precondition (and 
            (SituadoEn ?j ?x)
            (ObjetoCogido ?j ?b)
            (SituadoEn ?p ?x)
            (EsperandoObjeto ?p)
          )
  :effect (and
       (not (ObjetoCogido ?j ?b))
       (ManoLibre ?j)
       (not(EsperandoObjeto ?p))
      )
 )

 )
