#!/usr/bin/gnuplot

set terminal svg
set output 'bars.svg'

set xrange [-0.5:3.5]
set yrange [0:]

#set xlabel 'Horizontal' font "Helvetica, 14"
set ylabel 'Mean user time (s)' font "Helvetica, 14"
#set title 'My title' font "Helvetica, 24"

unset key

set grid ytics
set xtics nomirror
set tics scale 0

set boxwidth 0.5
#set style fill solid
#set style fill solid border -1
set style fill solid 0.5 border

# About entries in 'using':
#   - a plain integer is a column number,
#   - (expr) is an expression enclosed in parentheses
#     in which $n is shorthand for column(n)
#
# So
#
#   using 0:($2 + 15.0):2
#
# is equivalent to
#
#   using (column(0)):(column(2) + 15.0):(column(2))
#
# where column(0) is the sequence number of the data record.
#
plot 'bars.dat' \
		using 0:2:3:xtic(1) \
		with boxerrorbars linecolor rgb '#e53935', \
	'' \
		using 0:($2 + ARG1):2 \
		with labels font 'Helvetica, 12'
