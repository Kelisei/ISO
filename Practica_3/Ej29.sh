#!/bin/bash
<<29
29. Implemente un script que agregue a un arreglo todos los archivos del directorio /home cuya
terminación sea .doc. Adicionalmente, implemente las siguientes funciones que le permitan
acceder a la estructura creada:

verArchivo <nombre_de_archivo>: Imprime el archivo en pantalla si el mismo se
encuentra en el arreglo. Caso contrario imprime el mensaje de error “Archivo no en-
contrado” y devuelve como valor de retorno 5

cantidadArchivos: Imprime la cantidad de archivos del /home con terminación .doc

borrarArchivo <nombre_de_archivo>: Consulta al usuario si quiere eliminar el archi-
vo lógicamente. Si el usuario responde Si, elimina el elemento solo del arreglo. Si el
usuario responde No, elimina el archivo del arreglo y también del FileSystem. Debe
validar que el archivo exista en el arreglo. En caso de no existir, imprime el mensaje
de error “Archivo no encontrado” y devuelve como valor de retorno 10
29


# goku

array=($(find /home -name "*.doc"))
verArchivo() {
    encontrado="no"
    for file in ${array[*]}; do
        if [ $(echo $file | awk -F '/' {'print $NF'}) = $1 ]; then
            echo $file
            encontrado="si"
            break
        fi
    done
    if [ $encontrado = "no" ]; then
        echo "Archivo no encontrado"
        return 5
    fi
}

cantidadArchivos() {
    echo ${#array[*]}
}

borrarArchivo() {
    i=0
    while [ $i -lt ${#array[*]} ]; do
        echo $i
        if [ $(echo ${array[i]} | awk -F '/' {'print $NF'}) = $1 ]; then
            path=${array[i]}
            unset 'array[i]'
            echo "¿Quiere borrar fisicamente? y/n"
            read selection
            if [ $selection = "y" ]; then
                rm $path
            fi
        fi
        i=$((i + 1))
    done
}
verArchivo x.doc
cantidadArchivos
borrarArchivo x.doc
