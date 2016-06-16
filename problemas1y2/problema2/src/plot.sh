#!/usr/bin/gnuplot

Set terminal png
set output "plot1.png"
set ylabel "Mes"
set xlabel "Monto Total" 
set grid 
plot "plot1.dat" with lines 
