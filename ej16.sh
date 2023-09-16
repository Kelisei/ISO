#!/bin/bash
<<EJERCICIO_16
16. Realizar un script que reciba como parámetro una extensión y haga un reporte con 2
columnas, el nombre de usuario y la cantidad de archivos que posee con esa extensión. Se
debe guardar el resultado en un archivo llamado reporte.txt
EJERCICIO_16

if [ $# -ne 1 ]; then
    echo "Se requiere al menos un parametro (extensión)"
fi
for usuario in $(cat /etc/passwd | cut -d: -f1); do
    cantidad_archivos=$(sudo find /home -user ${usuario} -name "*$1" | wc -l)
    echo "Usuario: $usuario | Cantidad: $cantidad_archivos" >> listado.txt
done
clear
cat listado.txt