Algoritmo number_guessing
	// Pedimos el limite inferior
	escribir "Introduzca el límite inferior: "
	leer lower
	
	escribir "Introduzca el límite superior: "
	leer upper
	
	// Generamos número aleatorio entre el limite inferior y el limite superior
	x = aleatorio(lower, upper)
	
	// Calculamos el número de opotunidades posibles
	chances = redon(ln(upper - lower + 1))
	
	escribir "Tienes solo " + convertiratexto(chances) + " oportunidades para adivinar el número!"
	
	// Inicializamos el contador de oportunidades
	count = 0
	
	// Procesamos las opotunidades
	Mientras count < chances Hacer
		count = count + 1
		
		// Pedimos el número a adivinar
		escribir "Adivina el número: "
		leer guess
		
		// Validamos si acierta
		Si x == guess Entonces
			escribir "Felicitaciones, lo lograste en " + convertiratexto(count) + " intentos"
			// Rompemos el bucle
			count = chances
		SiNo
			Si x > guess Entonces
				escribir "El número es demasiado pequeño!"
			SiNo
				escribir "El número es demasiado grande!"
			Fin Si
		Fin Si
	Fin Mientras
	
	// Si los intentos de adivinar son mas que el calculo de oportunidades,
	// mostramos este mensaje.
	si count >= chances entonces
		escribir "El número es: " + convertiratexto(x)
		escribir "Mejor suerte la próxima vez!"
	FinSi
	
FinAlgoritmo
