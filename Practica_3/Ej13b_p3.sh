#!/bin/bash
while true; do
  clear # Limpia la pantalla
  echo "Menú:"
  echo "1. Listar"
  echo "2. Donde estoy"
  echo "3. QuienEsta"
  echo "4. Salir"

  read -p "Ingrese su elección: " opcion

  case $opcion in
  1)
    echo "Listando:"
    ls
    ;;
  2)
    echo "El directorio actual es:"
    pwd
    ;;
  3)
    echo "Quien vive"
    who
    ;;
  4)
    echo "Saliendo..."
    exit 0
    ;;
  *)
    echo "Opción no válida. Intente de nuevo."
    ;;
  esac

  read -p "Presione Enter para continuar..."
done
