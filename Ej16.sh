#!/bin/bash
<<EJERCICIO_16
16. Realizar un script que reciba como parámetro una extensión y haga un reporte con 2
columnas, el nombre de usuario y la cantidad de archivos que posee con esa extensión. Se
debe guardar el resultado en un archivo llamado reporte.txt
EJERCICIO_16

if [ $# -ne 1 ]; then
    echo "Se requiere al menos un parametro (extensión)" >&2
    exit 1 
fi

# En /etc/passwd encontramos los usuarios, se ve algo así: 
#root:x:0:0:root:/root:/bin/bash
#daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
#bin:x:2:2:bin:/bin:/usr/sbin/nologin

echo "" > listado.txt
for usuario in $(cat /etc/passwd | cut -d: -f1); do
    # Con find vamos encontramos el /home de cada usuario y contabilizamos los archivos que tienen
    cantidad_archivos=$(sudo find /home -user ${usuario} -name "*$1" | wc -l)
    echo "Usuario: $usuario | Cantidad $1: $cantidad_archivos" >> listado.txt
done