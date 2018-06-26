(define (problem ejercicio2-2)

(:domain ejercicio2)

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
		
	; Distancias
		; Primera Fila
		(=(Distancia z1 z2 ) 1)
		(=(Distancia z2 z1 ) 1)
		(=(Distancia z2 z3 ) 1)
		(=(Distancia z3 z2 ) 1)
		(=(Distancia z3 z4 ) 1)
		(=(Distancia z4 z3 ) 1)
		(=(Distancia z4 z5 ) 1)
		(=(Distancia z5 z4 ) 1)
		; Segunda Fila
		(=(Distancia z6 z7 ) 1)
		(=(Distancia z7 z6 ) 1)
		(=(Distancia z7 z8 ) 1)
		(=(Distancia z8 z7 ) 1)
		(=(Distancia z8 z9 ) 1)
		(=(Distancia z9 z8 ) 1)
		(=(Distancia z9 z10 ) 1)
		(=(Distancia z10 z9 ) 1)
		; Tercera Fila
		(=(Distancia z11 z12 ) 1)
		(=(Distancia z12 z11 ) 1)
		(=(Distancia z12 z13 ) 1)
		(=(Distancia z13 z12 ) 1)
		(=(Distancia z13 z14 ) 1)
		(=(Distancia z14 z13 ) 1)
		(=(Distancia z14 z15 ) 1)
		(=(Distancia z15 z14 ) 1)
		; Cuarta Fila
		(=(Distancia z16 z17 ) 1)
		(=(Distancia z17 z16 ) 1)
		(=(Distancia z17 z18 ) 1)
		(=(Distancia z18 z17 ) 1)
		(=(Distancia z18 z19 ) 1)
		(=(Distancia z19 z18 ) 1)
		(=(Distancia z19 z20 ) 1)
		(=(Distancia z20 z19 ) 1)
		; Quinta Fila
		(=(Distancia z21 z22 ) 1)
		(=(Distancia z22 z21 ) 1)
		(=(Distancia z22 z23 ) 1)
		(=(Distancia z23 z22 ) 1)
		(=(Distancia z23 z24 ) 1)
		(=(Distancia z24 z23 ) 1)
		(=(Distancia z24 z25 ) 1)
		(=(Distancia z25 z24 ) 1)
		;=======================
		; Primera con Segunda
		(=(Distancia z1 z6 ) 1)
		(=(Distancia z6 z1 ) 1)	
		(=(Distancia z2 z7 ) 1)
		(=(Distancia z7 z2 ) 1)	
		(=(Distancia z3 z8 ) 1)
		(=(Distancia z8 z3 ) 1)
		(=(Distancia z4 z9 ) 1)
		(=(Distancia z9 z4 ) 1)
		(=(Distancia z5 z10 ) 1)
		(=(Distancia z10 z5 ) 1)
		; Segunda con Tercera
		(=(Distancia z6 z11 ) 1)
		(=(Distancia z11 z6 ) 1)
		(=(Distancia z7 z12 ) 1)
		(=(Distancia z12 z7 ) 1)
		(=(Distancia z8 z13 ) 1)
		(=(Distancia z13 z8 ) 1)
		(=(Distancia z9 z14 ) 1)
		(=(Distancia z14 z9 ) 1)
		(=(Distancia z10 z15 ) 1)
		(=(Distancia z15 z10 ) 1)
		; Tercera con Cuarta
		(=(Distancia z11 z16 ) 1)
		(=(Distancia z16 z11 ) 1)
		(=(Distancia z12 z17 ) 1)
		(=(Distancia z17 z12 ) 1)
		(=(Distancia z13 z18 ) 1)
		(=(Distancia z18 z13 ) 1)
		(=(Distancia z14 z19 ) 1)
		(=(Distancia z19 z14 ) 1)
		(=(Distancia z15 z20 ) 1)
		(=(Distancia z20 z15 ) 1)
		; Cuarta con Quinta
		(=(Distancia z16 z21 ) 1)
		(=(Distancia z21 z16 ) 1)
		(=(Distancia z17 z22 ) 1)
		(=(Distancia z22 z17 ) 1)
		(=(Distancia z18 z23 ) 1)
		(=(Distancia z23 z18 ) 1)
		(=(Distancia z19 z24 ) 1)
		(=(Distancia z24 z19 ) 1)
		(=(Distancia z20 z25 ) 1)
		(=(Distancia z25 z20 ) 1)

	(= (DistanciaTotal) 0)

	(Orientado jugador norte)
	(SituadoEn jugador z1)
	(ManoLibre jugador)

	(SituadoEn manzana z1)
	(SituadoEn oscar z2)
	(SituadoEn rosa z3)
	(SituadoEn algoritmo z4)
	(SituadoEn oro z5)

	(SituadoEn dicaprio z6)
	(SituadoEn princesa z7)
	(SituadoEn principe z8)
	(SituadoEn bruja z9)
	(SituadoEn profesor z10)

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
(:metric minimize (DistanciaTotal))
)