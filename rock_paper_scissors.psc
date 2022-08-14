Algoritmo rock_paper_scissors
	jugar = "s"
	
	escribir "Las reglas del juego de piedra, papel o tijera son las siguientes:"
	escribir "Piedra vs papel  -> Papel gana"
	escribir "Piedra vs tijera -> Piedra gana"
	escribir "Papel vs tijera  -> Tijera gana"
	
	Mientras jugar == "s" Hacer
		escribir "Introduzca la opción: 1 para Piedra, 2 para Papel y 3 para tijera"
		// obtenemos la opción del usuario
		escribir "Turno del usuario:"
		leer choice
		
		// iteramos hasta que el usuario introduzca una opcion valida
		Mientras choice > 3 O choice < 1 Hacer
			escribir "Introduza un valor valido:"
			leer choice
		Fin Mientras
		
		// inicializamos el valor de la variable choice_name
		// correspondiente al valor seleccionado
		Si choice == 1 Entonces
			choice_name = "Piedra"
		SiNo
			Si choice == 2 Entonces
				choice_name = "Papel"
			SiNo
				Si choice == 3 Entonces
					choice_name = "Tijera"
				Fin Si
			Fin Si
		Fin Si
		
		// Otra forma de inicializar choice_name
//		Segun choice Hacer
//			1:
//				choice_name = "Piedra"
//			2:
//				choice_name = "Papel"
//			3:
//				choice_name = "Tijera"
//		Fin Segun
		
		// imprimimos la opción del usuario
		escribir "La selección del usuario es: " + choice_name
		escribir "Ahora es el turno de la maquina......."
		
		// la maquina selecciona un valor aleatorio entre 1, 2 y 3
		comp_chioce = aleatorio(1, 3)
		
		// inicializamos el valor de la variable comp_choice_name correspondiente al valor seleccionado
		Si comp_chioce == 1 Entonces
			comp_choice_name = "Piedra"
		SiNo
			Si comp_chioce == 2 Entonces
				comp_choice_name = "Papel"
			SiNo
				Si comp_chioce == 3 Entonces
					comp_choice_name = "Tijera"
				Fin Si
			Fin Si
		Fin Si
		
		// imprimimos la opción de la maquina
		escribir "La selección de la maquina es: " + comp_choice_name
		
		escribir choice_name + " Vs " + comp_choice_name
		
		// chequeamos si hay empate
		Si choice == comp_chioce Entonces
			escribir "Empate=> "
			result = "Empate"
		Fin Si
		
		// chequeamos quien es el ganador
		Si ((choice == 1 Y comp_chioce == 2) O (choice == 2 Y comp_chioce == 1)) Entonces
			escribir "Gana Papel=> "
			result = "Papel"
		Fin Si
		
		Si ((choice == 1 Y comp_chioce == 3) O (choice == 3 Y comp_chioce == 1)) Entonces
			escribir "Gana Peidra=> "
			result = "Piedra"
		Fin Si
		
		Si ((choice == 2 Y comp_chioce == 3) O (choice == 3 Y comp_chioce == 2)) Entonces
			escribir "Gana Tijera=> "
			result = "Tijera"
		Fin Si
		
		// Mostramos el resultado
		Si result == "Empate" Entonces
			escribir "<== Es un empate ==>"
		SiNo
			Si result == choice_name Entonces
				escribir "<== Ganaste ==>"
			SiNo
				Si result == comp_choice_name Entonces
					escribir "<== Te ganó la maquina ==>"
				FinSi
			FinSi
		FinSi
		
		escribir "Quieres volver a jugar? (S/N)"
		Leer jugar
		
		// Si el usuario introduce N modificamos el valor de la variable jugar para salir del Mientras
		// Nota: Pseint no tiene instrucción break
		Si jugar == "n" Entonces
			jugar = "n"
		FinSi
		
	Fin Mientras
	
	Escribir "Gracias por jugar"
	
FinAlgoritmo
