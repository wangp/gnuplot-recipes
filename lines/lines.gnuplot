#!/usr/bin/gnuplot

set terminal svg
set output 'lines.svg'

set xrange [:]
set yrange [0:]

set xlabel 'Number of inputs' font "Helvetica, 14"
set ylabel 'Mean time (s)' font "Helvetica, 14"
#set title 'My title' font "Helvetica, 24"

set key spacing 1 font "Helvetica, 14"
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

set pointsize 0.5

# 'lines' for no points
# 'pointtype <n>' for different types of points
plot 'no-argpack.dat' with linespoints pointtype 2 \
	linecolor rgb 'red' \
	title "no-argpack", \
     'baseline.dat' with linespoints pointtype 4 \
	linecolor rgb 'brown' \
	title "baseline", \
     'argpack.dat' with linespoints pointtype 6 \
	linecolor rgb 'blue' \
	title "argpack", \
     'argpack-enhance.dat' with linespoints pointtype 8 \
	linecolor rgb 'black' \
	title "argpack-enh"
