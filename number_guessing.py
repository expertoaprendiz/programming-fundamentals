import random
import math

# Pedimos el limite inferior
lower = int(input("Introduzca el límite inferior: "))

# Pedidmos el limite superior
upper = int(input("Introduzca el límite superior: "))

# Generamos número aleatorio entre el limite inferior y el limite superior
x = random.randint(lower, upper)

# Calculamos la cantidad de opotunidades validas
chances = round(math.log(upper - lower + 1, 2))

print("\n\tTienes solo ",
	chances,
	" oportunidades para adivinar el número!\n")

# Inicializamos el contador de oportunidades
count = 0

# Procesamos las opotunidades
while count < chances:
	count += 1

	# Pedimos el número a adivinar
	guess = int(input("Adivina el número: "))

	# Validamos si acierta
	if x == guess:
		print("Felicitaciones, lo lograste en ",
			count, " intentos")
		# Rompemos el bucle
		break
	elif x > guess:
		print("El número es demasiado pequeño!")
	elif x < guess:
		print("El número es demasiado grande!")

# Si los intentos de adivinar son mas que el calculo de oportunidades,
# mostramos este mensaje.
if count >= chances:
	print("\nEl número es %d" % x)
	print("\tMejor suerte la próxima vez!")
