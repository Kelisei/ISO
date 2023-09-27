#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Se requiere exactamente un parametro" >&2
	exit 1
fi

exists=$(getent passwd | grep $1 | wc -l)
if [ $exists -eq 0 ]; then
	echo "Usuario no existente" >&2
	exit 1
fi

count=0
while true; do
	connected_users=$(who | grep $1 | wc -l)
	if [ $connected_users -gt 1 ]; then
		echo "$1 $(date)" >>"/var/log/access-$1.log"
		let count++
		echo "Esta logeado"
	fi
	if [ $count -eq 3 ]; then
		break
	fi
	sleep 1
done
exit 0
