#! /bin/bash

if [ "$#" -ne  2 ] ; then
	echo "Error: Debe ingresar exactamente dos argumentos" >&2
	exit 2
fi

if ! [[ $1 =~ ^-?[0-9]+$ ]] || ! [[ $2 =~ ^-?[0-9]+$ ]]; then
	echo "Error: Los argumentos deben ser un número entero" >&2
	exit 3
fi

SUMA=$(( $1 + $2 ))
RESTA=$(( $1 - $2 ))
MULTIPLICACION=$(( $1 * $2 ))

if [ "$2" -eq 0 ]; then
	DIVISION="N/A"
	RESTO="N/A"
else
	DIVISION=$(( $1 / $2 ))
	RESTO=$(( $1 % $2 ))
fi

if [ "$1" -eq "$2" ]; then
	COMPARACION="Ambos números son iguales"
elif [ "$1" -gt "$2" ]; then
	COMPARACION="$1 es un número mayor que $2"
else
	COMPARACION="$2 es un número mayor que $1"
fi

# Formato de salida (Tabla Markdown)
echo "| Operación | Expresión | Resultado |"
echo "| :--- | :--- | :--- |"
echo "| Suma | $1 + $2 | $SUMA |"
echo "| Resta | $1 - $2 | $RESTA |"
echo "| Multiplicación | $1 * $2 | $MULTIPLICACION |"
echo "| División | $1 / $2 | $DIVISION |"
echo "| Resto (Módulo) | $1 % $2 | $RESTO |"
echo "| Comparación | N/A | $COMPARACION |"
