(define (problem ejercicio4-problem)

(:domain ejercicio4)

(:objects 
		j1 - jugador 
		z1 z2 z3 z4 z5 z6 z7 z8 z9 z10 z11 z12 z13 z14
		z15 z16 z17 z18 z19 z20 z21 z22 z23 z24 z25 - zona
		norte sur este oeste - orientacion
		manzana oscar rosa algoritmo oro - entregable
		zapatilla bikini - no_entregable
		dicaprio princesa principe bruja profesor - personaje
		bosque agua precipicio arena piedra - terreno
		)

;z1  z2  z3  z4  z5
;z6  z7  z8  z9  z10
;z11 z12 z13 z14 z15

(:INIT 

	;TiposTerreno
		(TipoTerreno z1 arena)
		(TipoTerreno z2 arena)
		(TipoTerreno z3 bosque)
		(TipoTerreno z4 precipicio)
		(TipoTerreno z5 arena)
		(TipoTerreno z6 arena)
		(TipoTerreno z7 piedra)
		(TipoTerreno z8 bosque)
		(TipoTerreno z9 agua)
		(TipoTerreno z10 agua)
		(TipoTerreno z11 bosque)
		(TipoTerreno z12 bosque)
		(TipoTerreno z13 piedra)
		(TipoTerreno z14 arena)
		(TipoTerreno z15 bosque)
		(TipoTerreno z16 arena)
		(TipoTerreno z17 piedra)
		(TipoTerreno z18 precipicio)
		(TipoTerreno z19 arena)
		(TipoTerreno z20 piedra)
		(TipoTerreno z21 piedra)
		(TipoTerreno z22 arena)
		(TipoTerreno z23 precipicio)
		(TipoTerreno z24 arena)
		(TipoTerreno z25 arena)

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
		;=======================
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

	(Orientado j1 norte)
	(SituadoEn j1 z1)
	(ManoLibre j1)
	(MochilaLibre j1)

	(ObjetoNecesario bosque zapatilla)
	(ObjetoNecesario agua bikini)

	(SituadoEn manzana z25)
	(SituadoEn manzana z11)
	(SituadoEn manzana z5)

	(SituadoEn oscar z4)
	(SituadoEn oscar z14)
	(SituadoEn oscar z16)

	;(SituadoEn oscar z2)
	;(SituadoEn rosa z3)
	;(SituadoEn algoritmo z4)
	;(SituadoEn oro z5)

	(SituadoEn zapatilla z7)
	(SituadoEn bikini z15)

	(SituadoEn dicaprio z21)
	(SituadoEn princesa z22)
	(SituadoEn principe z1)
	(SituadoEn bruja z24)
	(SituadoEn profesor z20)

	;Puntos
		(= (Puntos dicaprio oscar) 10)
		(= (Puntos dicaprio rosa) 1)
		(= (Puntos dicaprio manzana) 3)
		(= (Puntos dicaprio algoritmo) 4)
		(= (Puntos dicaprio oro) 5)

		(= (Puntos princesa oscar) 5)
		(= (Puntos princesa rosa) 10)
		(= (Puntos princesa manzana) 1)
		(= (Puntos princesa algoritmo) 3)
		(= (Puntos princesa oro) 4)

		(= (Puntos bruja oscar) 4)
		(= (Puntos bruja rosa) 5)
		(= (Puntos bruja manzana) 10)
		(= (Puntos bruja algoritmo) 1)
		(= (Puntos bruja oro) 3)

		(= (Puntos profesor oscar) 3)
		(= (Puntos profesor rosa) 4)
		(= (Puntos profesor manzana) 5)
		(= (Puntos profesor algoritmo) 10)
		(= (Puntos profesor oro) 1)

		(= (Puntos principe oscar) 1)
		(= (Puntos principe rosa) 3)
		(= (Puntos principe manzana) 4)
		(= (Puntos principe algoritmo) 5)
		(= (Puntos principe oro) 10)

	(= (PuntosTotal) 0)

)

(:goal (= (PuntosTotal) 50)
)
(:metric minimize (DistanciaTotal))
)