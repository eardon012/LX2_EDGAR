#!/bin/bash
#############################################################
#                                                           #
# Imprime 4 diferentes comandos de monitoreamento de red    #
#                                                           #
#############################################################

clear
echo "Lista de opciones de comando"
echo
echo "Digite una de las opciones (1,2,3 o 4) seguido de la tecla ENTER" 
echo
echo "1) Memoria"
echo "2) Top"
echo "3) Netstat"
echo "4) Nmap"
echo 
read opcion
if [ $opcion = 1 ] 
	then free -h
fi
