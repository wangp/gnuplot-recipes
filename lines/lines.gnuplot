#!/usr/bin/gnuplot

set terminal svg
set output 'lines.svg'

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
#set tics scale 0
#set tics out

# 'lines' for no points
# 'pointtype <n>' for different types of points
plot 'lines.dat' with linespoints pointtype 6 \
	linecolor rgb '#f44336' \
	title "My data"
