#!/bin/bash
clear 

echo "################################################################"
echo "#   This program turns XLS files into CSV files                #"
echo "#   then it takes out all the commas so it can be plotted with #"
echo "#   GNUplot                                                    #"
echo "################################################################"
DATA=~/Documents/LX2_EDGAR/problemas1y2/problema2

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

set terminal png

set output"$DATAPNG/plot$m.png"

set xlabel "Mes"
set xrange [1:6]

set ylabel "Monto Total"
set yrange [0:80000]

set grid

set title "Consumo Agua y Luz, mes 1 a 6"

set style data linespoints

plot "$DATAPLOT/plot$m.dat" using 1:2 title "Luz", "" using 1:3 title "Agua"
__EOF

let m=m+1

done 

echo "All tasks completed"


