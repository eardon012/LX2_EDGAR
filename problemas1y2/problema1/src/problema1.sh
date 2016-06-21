#!/bin/bash
clear 

echo "################################################################"
echo "#   This program turns XLS files into CSV files                #"
echo "#   then it takes out all the commas so it can be plotted with #"
echo "#   GNUplot  (Problema1)                                       #"
echo "################################################################"
DATA=~/Documents/LX2_EDGAR/problemas1y2/problema1

mkdir $DATA/plot
DATAPLOT=$DATA/plot
echo " creating plot folder to move any CSV file(s) before plotting "
mkdir $DATA/archivos_csv
echo " creating archivos_csv folder to drop CSV files into "
mkdir $DATA/png
DATAPNG=$DATA/png
echo " creating png folder to drop png files into "
DATACSV=$DATA/archivos_csv

m=0

for i in `find $DATA/hojasDatos -name '*.xls'`
do 
	echo "Processing file $i"
	xls2csv -q 0 $i > $DATACSV/data-$m.csv
        echo " Getting CSV data-$m.csv ready for GNUplot "
        ls -lh $DATACSV
	awk -F"," '{print $1,$2,$3}' $DATACSV/data-$m.csv >> $DATAPLOT/plot$m.dat
        echo "plot$m.dat File ready"
        ls -lh $DATAPLOT

/usr/bin/gnuplot <<__EOF 

reset

set terminal png

set output"$DATAPNG/plot$m.png"

set xlabel "Time" 
set xrange [001:300]

set ylabel "Measurements"
set yrange [0:60]

set grid

set title "Plot $m"

set linestyle 1 lt 1 lw 6
set linestyle 2 lt 2 lc 1
set linestyle 3 lt 3 lc 3

plot "$DATAPLOT/plot$m.dat" using 1:2 title "Sensor 1", "" using 1:3 title "Sensor 2", "" using 1:4 title "Sensor 4"
__EOF

let m=m+1

done 

echo "All tasks completed"


