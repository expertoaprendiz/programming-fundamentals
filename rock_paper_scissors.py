import random

# Instrucción multilinea
# Concatenación de cadenas
print("Las reglas del juego de piedra, papel o tijera son las siguientes: \n"
								+"Piedra vs papel  -> Papel gana \n"
								+"Piedra vs tijera -> Piedra gana \n"
								+"Papel vs tijera  -> Tijera gana \n")

while True:
	print("Introduzca la opción \n 1 para Piedra, \n 2 para Papel, y \n 3 para tijera \n")
	
	# obtenemos la opción del usuario
	choice = int(input("Turno del usuario: "))
	
	# iteramos hasta que el usuario introduzca una opcion valida
	while choice > 3 or choice < 1:
		choice = int(input("Introduza un valor valido: "))
		
	# inicializamos el valor de la variable choice_name correspondiente al valor seleccionado
	# Nota: Python no tiene estructura Switch - case. Tiene patron Match a partir de la versión 3.10
	if choice == 1:
		choice_name = 'Piedra'
	elif choice == 2:
		choice_name = 'Papel'
	else:
		choice_name = 'Tijera'
		
	# imprimimos la opción del usuario
	print("La selección del usuario es: " + choice_name)
	print("\nAhora es el turno de la maquina.......")

	# la maquina selecciona un valor aleatorio entre 1, 2 y 3
	comp_choice = random.randint(1, 3)
	
    # looping until comp_choice value
	# is equal to the choice value
	#while comp_choice == choice:
		#comp_choice = random.randint(1, 3)

	# inicializamos el valor de la variable comp_choice_name correspondiente al valor seleccionado
	if comp_choice == 1:
		comp_choice_name = 'Piedra'
	elif comp_choice == 2:
		comp_choice_name = 'Papel'
	else:
		comp_choice_name = 'Tijera'
		
	print("La selección de la maquina es: " + comp_choice_name)

	print(choice_name + " Vs " + comp_choice_name)
	# chequeamos si hay empate
	if choice == comp_choice:
		print("Empate=> ", end = "")
		result = "Empate"
	
	# chequeamos quien es el ganador
	if((choice == 1 and comp_choice == 2) or
	(choice == 2 and comp_choice ==1 )):
		print("Gana Papel => ", end = "")
		result = "Papel"

	elif((choice == 1 and comp_choice == 3) or
		(choice == 3 and comp_choice == 1)):
		print("Gana Piedra =>", end = "")
		result = "Piedra"

	elif((choice == 2 and comp_choice == 3) or
		(choice == 3 and comp_choice == 2)):
		print("Gana Tijera =>", end = "")
		result = "Tijera"

	# Mostramos el resultado
	if result == "Empate":
		print("<== Es una empate ==>")
	elif result == choice_name:
		print("<== Ganaste ==>")
	elif result == comp_choice_name:
		print("<== Te ganó la maquina ==>")
		
	ans = input("Quieres volver a jugar? (S/N): ")

	# Si el usuario introduce N, rompemos el bucle
	if ans == 'n' or ans == 'N':
		break
	
# after coming out of the while loop
# we print thanks for playing
print("\nGracias por jugar")
