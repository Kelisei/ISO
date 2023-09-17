#!/bin/bash
<<Ejercicio_19
19. Escribir un Programa de “Menu de Comandos Amigable con el Usuario” llamado menu, el
cual, al ser invocado, mostrará un menú con la selección para cada uno de los scripts creados
en esta práctica. Las instrucciones de como proceder deben mostrarse junto con el menú.
El menú deberá iniciarse y permanecer activo hasta que se seleccione Salir. Por ejemplo:
MENU DE COMANDOS
03. Ejercicio 3
12. Evaluar Expresiones
13. Probar estructuras de control
...
Ingrese la opción a ejecutar: 03
Ejercicio_19

echo "Menu de Comandos Amigable con el Usuario"
select option in $PWD/*.sh; do
    echo "Introduzca argumentos si los necesita"
    read argumentos
    $option $argumentos
done