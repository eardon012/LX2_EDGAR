#!/bin/bash

DATA=~/Documents/LX2_EDGAR/problemas1y2/problema2

mkdir $DATA/archivos_csv
OUT_DATA=$DATA/archivos_csv

m=0

for i in `find $DATA/hojasDatos -name '*.xls'`
do 
	echo "Procesando archivo $i"

	xls2csv $i > $OUT_DATA/data-$m.csv
	let m=m+1
done 2> error1.log
