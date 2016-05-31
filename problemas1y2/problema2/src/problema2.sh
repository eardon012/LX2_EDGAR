#!/bin/bash

DATA=~/Documents/LinuxServerAdmin2/proyectoFinal/problema2

mkdir $DATA/archivos_csv
OUT_DATA=$DATA/archivos_csv

m=0

for i in `find $DATA -name '*.xls'`
do 
	echo "Procesando archivo $i"

	xls2csv $i > $OUT_DATA/data-$m.csv
	let m=m+1
	done 2> error1.log
