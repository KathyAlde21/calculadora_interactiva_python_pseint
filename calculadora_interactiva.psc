Proceso CalculadoraInteractiva
	
    Definir num1, num2, resultado Como Real
    Definir operacion, continuar Como Cadena
   	
    continuar <- "S"
	
    Mientras Mayusculas(continuar) <> "N" Hacer
		
        // Pedir primer número
        Escribir "Ingrese el primer número:"
		Leer num1
		
        // Pedir segundo número
        Escribir "Ingrese el segundo número:"
		Leer num2
		
        // Pedir operación
        Repetir
            Escribir "Seleccione operación (+, -, *, /):"
            Leer operacion
        Hasta Que operacion = "+" O operacion = "-" O operacion = "*" O operacion = "/"
		
        // Verificar división por cero
        Si operacion = "/" Y num2 = 0 Entonces
            Escribir "?? No se puede dividir por cero. Intente nuevamente."
        Sino
            // Realizar operación
            Segun operacion Hacer
					Caso "+":
                    resultado <- num1 + num2
					Caso "-":
                    resultado <- num1 - num2
					Caso "*":
                    resultado <- num1 * num2
					Caso "/":
                    resultado <- num1 / num2
            FinSegun
			
            // Mostrar resultado
            Escribir "? Resultado: ", resultado
        FinSi
		
        // Preguntar si desea continuar
        Repetir
            Escribir "¿Desea realizar otra operación? (S/N):"
            Leer continuar
            continuar <- Mayusculas(continuar)
        Hasta Que continuar = "S" O continuar = "N"
		
    FinMientras

FinProceso
