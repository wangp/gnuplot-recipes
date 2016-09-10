#!/usr/bin/gnuplot

set terminal pdf
set output 'scatter.pdf'

set xrange [0:10]
set yrange [0:10]

set xlabel 'Horizontal (units)'	font "Helvetica, 14"
set ylabel 'Vertical' font "Helvetica, 14"
set title 'My title' font "Helvetica, 24"

set key spacing 3 font "Helvetica, 14"
set key box
set key bottom right
#set key outside
#unset key

set grid
set xtics 2	# major
set ytics 2
set mxtics 2	# minor
set mytics 2
#set tics out

plot 'scatter.dat' with points pointtype 2 pointsize 1.5 \
	linecolor rgb '#f44336' \
	title "My data"
