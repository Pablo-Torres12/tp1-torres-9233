#! /bin/bash

# Datos personales requeridos
LEGAJO="9233"
DNI="8899"
TOKEN="${LEGAJO}${DNI}"

# Carpeta de destino 
mkdir -p logs

echo "La versión actual de bash es: $BASH_VERSION" > logs/entorno_${LEGAJO}.txt

echo "El contenido de la variable PATH es: $PATH" >> logs/entorno_${LEGAJO}.txt

echo "El token de autenticidad es: $TOKEN" >> logs/entorno_${LEGAJO}.txt
