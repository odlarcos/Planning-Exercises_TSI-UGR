(define (problem ejercicio1)

(:domain ejercicio1)

(:objects jugador - jugador 
		z1 z2 z3 z4 z5 z6 z7 z8 z9 z10 z11 z12 z13 z14
		z15 z16 z17 z18 z19 z20 z21 z22 z23 z24 z25 - zona
		norte sur este oeste - orientacion
		manzana oscar rosa algoritmo oro - objeto
		dicaprio princesa principe bruja profesor - personaje
		)

;z1  z2  z3  z4  z5
;z6  z7  z8  z9  z10
;z11 z12 z13 z14 z15
;z16 z17 z18 z19 z20
;z21 z22 z23 z24 z25

(:INIT 

	;Conectada
		; Primera Fila
		(Conectada z1 z2 este)
		(Conectada z2 z1 oeste)
		(Conectada z2 z3 este)
		(Conectada z3 z2 oeste)
		(Conectada z3 z4 este)
		(Conectada z4 z3 oeste)
		(Conectada z4 z5 este)
		(Conectada z5 z4 oeste)
		; Segunda Fila
		(Conectada z6 z7 este)
		(Conectada z7 z6 oeste)
		(Conectada z7 z8 este)
		(Conectada z8 z7 oeste)
		(Conectada z8 z9 este)
		(Conectada z9 z8 oeste)
		(Conectada z9 z10 este)
		(Conectada z10 z9 oeste)
		; Tercera Fila
		(Conectada z11 z12 este)
		(Conectada z12 z11 oeste)
		(Conectada z12 z13 este)
		(Conectada z13 z12 oeste)
		(Conectada z13 z14 este)
		(Conectada z14 z13 oeste)
		(Conectada z14 z15 este)
		(Conectada z15 z14 oeste)
		; Cuarta Fila
		(Conectada z16 z17 este)
		(Conectada z17 z16 oeste)
		(Conectada z17 z18 este)
		(Conectada z18 z17 oeste)
		(Conectada z18 z19 este)
		(Conectada z19 z18 oeste)
		(Conectada z19 z20 este)
		(Conectada z20 z19 oeste)
		; Quinta Fila
		(Conectada z21 z22 este)
		(Conectada z22 z21 oeste)
		(Conectada z22 z23 este)
		(Conectada z23 z22 oeste)
		(Conectada z23 z24 este)
		(Conectada z24 z23 oeste)
		(Conectada z24 z25 este)
		(Conectada z25 z24 oeste)
		; Primera con Segunda
		(Conectada z1 z6 sur)
		(Conectada z6 z1 norte)	
		(Conectada z2 z7 sur)
		(Conectada z7 z2 norte)	
		(Conectada z3 z8 sur)
		(Conectada z8 z3 norte)
		(Conectada z4 z9 sur)
		(Conectada z9 z4 norte)
		(Conectada z5 z10 sur)
		(Conectada z10 z5 norte)
		; Segunda con Tercera
		(Conectada z6 z11 sur)
		(Conectada z11 z6 norte)
		(Conectada z7 z12 sur)
		(Conectada z12 z7 norte)
		(Conectada z8 z13 sur)
		(Conectada z13 z8 norte)
		(Conectada z9 z14 sur)
		(Conectada z14 z9 norte)
		(Conectada z10 z15 sur)
		(Conectada z15 z10 norte)
		; Tercera con Cuarta
		(Conectada z11 z16 sur)
		(Conectada z16 z11 norte)
		(Conectada z12 z17 sur)
		(Conectada z17 z12 norte)
		(Conectada z13 z18 sur)
		(Conectada z18 z13 norte)
		(Conectada z14 z19 sur)
		(Conectada z19 z14 norte)
		(Conectada z15 z20 sur)
		(Conectada z20 z15 norte)
		; Cuarta con Quinta
		(Conectada z16 z21 sur)
		(Conectada z21 z16 norte)
		(Conectada z17 z22 sur)
		(Conectada z22 z17 norte)
		(Conectada z18 z23 sur)
		(Conectada z23 z18 norte)
		(Conectada z19 z24 sur)
		(Conectada z24 z19 norte)
		(Conectada z20 z25 sur)
		(Conectada z25 z20 norte)

	(Orientado jugador norte)
	(SituadoEn jugador z1)
	(ManoLibre jugador)

	(SituadoEn manzana z1)
	(SituadoEn oscar z2)
	(SituadoEn rosa z3)
	(SituadoEn algoritmo z4)
	(SituadoEn oro z5)

	(SituadoEn dicaprio z16)
	(SituadoEn princesa z17)
	(SituadoEn principe z18)
	(SituadoEn bruja z19)
	(SituadoEn profesor z20)

	(EsperandoObjeto dicaprio)
	(EsperandoObjeto princesa)
	(EsperandoObjeto principe)
	(EsperandoObjeto bruja)
	(EsperandoObjeto profesor)

)

(:goal (and (not(EsperandoObjeto dicaprio))
			(not(EsperandoObjeto princesa))
			(not(EsperandoObjeto principe))
			(not(EsperandoObjeto bruja))
			(not(EsperandoObjeto profesor))
		 )

)
)