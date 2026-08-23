#! /bin/bash

if [ -z "$1" ] ; then
	echo "Error: Debe ingresar su nombre." >&2
	exit 1
fi

LEGAJO="9233"

mkdir -p logs

{
	echo "Iniciando el diagnóstico para el Administrador: $1"

	echo "La fecha y hora actual del sistema es: $(date +"%Y-%m-%d %H:%M:%S")"

	echo "Tiempo de actividad del sistema: $(uptime)"

	echo "El porcentaje de uso en disco de la partición raíz (/) es:"
	df -h /

	echo "El espacio disponible en el directorio /home es:"
	df -h /home

	echo "Usuarios conectados actualmente:"
	who

	echo "La dirección IP local es: $(hostname -I)"
} | tee -a logs/diagnostico_${LEGAJO}.log


