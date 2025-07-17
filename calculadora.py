def pedir_numero(etiqueta):
    while True:
        try:
            return float(input(f"Ingrese el {etiqueta}: "))
        except ValueError:
            print("❌ Entrada no válida. Por favor, ingrese un número.")

def pedir_operacion():
    operaciones_validas = ["+", "-", "*", "/"]
    while True:
        op = input("Seleccione operación (+, -, *, /): ").strip()
        if op in operaciones_validas:
            return op
        else:
            print("⚠️ Operación no válida. Intente con +, -, * o /.")

def desea_continuar():
    while True:
        respuesta = input("¿Desea realizar otra operación? (S/N): ").strip().upper()
        if respuesta in ["S", "N"]:
            return respuesta == "S"
        else:
            print("❌ Respuesta inválida. Escriba S para sí o N para no.")

# Ciclo principal
while True:
    num1 = pedir_numero("primer número")
    num2 = pedir_numero("segundo número")
    operacion = pedir_operacion()

    if operacion == "/" and num2 == 0:
        print("🚫 No se puede dividir por cero. Intente nuevamente.")
        continue

    # Realizar la operación
    if operacion == "+":
        resultado = num1 + num2
    elif operacion == "-":
        resultado = num1 - num2
    elif operacion == "*":
        resultado = num1 * num2
    elif operacion == "/":
        resultado = num1 / num2

    print(f"✅ Resultado: {resultado:.2f}")

    if not desea_continuar():
        break
