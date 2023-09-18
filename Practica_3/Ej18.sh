#!/bin/bash
<<Ejercicio_18
18. Crear un script que verifique cada 10 segundos si un usuario se ha loqueado en el sistema
(el nombre del usuario será pasado por parámetro). Cuando el usuario finalmente se loguee,
el programa deberá mostrar el mensaje ”Usuario XXX logueado en el sistema” y salir.
Ejercicio_18
if ! [ $# -eq 1 ]; then
    echo "Se necesita almenos 1 parametro (nombre de usuario)" >&2
    exit 1
fi
while true; do 
    if [ $(who | grep -w $1 | wc -l) -gt 0 ]; then
        break
    fi
    echo "No encontrado, esperando 10 segundos"
    sleep 10
done
echo "Usuario $1 logueado en el sistema"