#!/bin/bash
<<30
30. Realice un script que mueva todos los programas del directorio actual (archivos ejecutables)
hacia el subdirectorio “bin” del directorio HOME del usuario actualmente logueado. 
El script debe imprimir en pantalla los nombres de los que mueve, e indicar cuántos ha movido, o
que no ha movido ninguno. 
Si el directorio “bin” no existe,deberá ser creado.
30

bin="$HOME/bin"
if [ -e bin ]; then mkdir "$bin" ; fi

for archive in $PWD/*; do
    if [ -f "$archive" ]; then
        if [ $(file "$archive" | awk -F ' ' {'print $NF'}) = "executable" ]; then
            mv $archive $bin
        fi
    fi
done