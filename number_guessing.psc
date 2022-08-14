Algoritmo number_guessing
	// Pedimos el limite inferior
	escribir "Introduzca el l�mite inferior: "
	leer lower
	
	escribir "Introduzca el l�mite superior: "
	leer upper
	
	// Generamos n�mero aleatorio entre el limite inferior y el limite superior
	x = aleatorio(lower, upper)
	
	// Calculamos el n�mero de opotunidades posibles
	chances = redon(ln(upper - lower + 1))
	
	escribir "Tienes solo " + convertiratexto(chances) + " oportunidades para adivinar el n�mero!"
	
	// Inicializamos el contador de oportunidades
	count = 0
	
	// Procesamos las opotunidades
	Mientras count < chances Hacer
		count = count + 1
		
		// Pedimos el n�mero a adivinar
		escribir "Adivina el n�mero: "
		leer guess
		
		// Validamos si acierta
		Si x == guess Entonces
			escribir "Felicitaciones, lo lograste en " + convertiratexto(count) + " intentos"
			// Rompemos el bucle
			count = chances
		SiNo
			Si x > guess Entonces
				escribir "El n�mero es demasiado peque�o!"
			SiNo
				escribir "El n�mero es demasiado grande!"
			Fin Si
		Fin Si
	Fin Mientras
	
	// Si los intentos de adivinar son mas que el calculo de oportunidades,
	// mostramos este mensaje.
	si count >= chances entonces
		escribir "El n�mero es: " + convertiratexto(x)
		escribir "Mejor suerte la pr�xima vez!"
	FinSi
	
FinAlgoritmo
