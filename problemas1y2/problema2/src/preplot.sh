#!/bin/bash

#script para aislar informacion de la quinta columna#########

DATA=~/Documents/LX2_EDGAR/problemas1y2/problema2
mkdir $DATA/plot

echo " Dando formato a los datos para poder graficar "
echo " Mostrara solo las primeras las primeras 10 lineas "
awk -F"," '{print $1,$2,$3}' $DATA/archivos_csv/data-0.csv >> $DATA/plot/plot1.dat





