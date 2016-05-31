#!/bin/bash

DATA=~/Documents/LX2_Edgar/problemas1y2/problema2

mkdir $DATA/datos_$(date +%y.%m.%d)_csv
OUT_DATA=$DATA/datos_$(date +%y.%m.%d)

m=0

for i in `find $DATA\hojasDatos -name '*.xls'`
do 
	echo "Procesando archivo $i"

	xls2csv $i > $OUT_DATA/data-$m.csv
	let m=m+1
done 2> error1.log
