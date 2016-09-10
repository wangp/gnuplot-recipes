#!/usr/bin/gnuplot

set terminal pdf
set output 'barshoriz.pdf'

set xrange [0:375]

set xlabel 'Horizontal' font "Helvetica, 14"
#set ylabel 'Vertical' font "Helvetica, 14"
set title 'My title' font "Helvetica, 24"

unset key

set grid xtics
set xtics nomirror
set ytics nomirror
set tics scale 0
set noborder

set style fill solid border -1

plot 'barshoriz.dat' \
		using ($2/2.0):(-$0):($2/2.0):(0.3):ytic(1) \
		with boxxyerrorbars linecolor rgb '#4caf50', \
	'' \
		using ($2 + 14.0):(-$0):($2) \
		with labels font 'Helvetica, 12'
