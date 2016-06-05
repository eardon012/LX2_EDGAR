#!/bin/bash

shopt -s nocasematch

distro=$1

function parametros 
{
for i in "$@"; do
	echo "Los parametros pasados fueron: $i"
done
}

parametros2()
{
for i in "$@"; do
	echo "Los parametros pasados fueron: $i"
done
}
case "$distro" in
	Ubuntu)
		echo "Distribucion $! soportada"
			parametros1 casa perro gato

	#	for i in $@; do
	#		echo "Los parametros pasados fueron: $i"
	#	done
	;;
	Centos)
echo "Distribucion $! soportada"
	#	for i in $@; do
	#		echo "Los parametros pasados fueron: $i"
	#	done
			parametros1 casita perrito gatito									
	;;
Fedora)
echo "Distribucion $! soportada"
	#	for i in $@; do
	#		echo "Los parametros pasados fueron: $i"
	#	done
			parametros2 $@
	;;
*)

		echo Distro no soportada

esac


