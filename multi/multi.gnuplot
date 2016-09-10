#!/usr/bin/gnuplot

set terminal pdf size 10,6
set output 'multi.pdf'

set multiplot layout 2, 2
plot sin(x)	linecolor rgb '#e53935'
plot sin(x)/x	linecolor rgb '#3949ab'
plot sin(x)*x	linecolor rgb '#2196f3'
plot sin(x)*x*x	linecolor rgb '#4caf50'
unset multiplot
