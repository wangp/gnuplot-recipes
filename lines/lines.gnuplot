#!/usr/bin/gnuplot

set terminal svg background '#ffffff'
set output 'lines.svg'

#set xrange [0:10]
#set yrange [0:10]

set xlabel 'Sample'   font "Helvetica, 12"
set ylabel 'KiB'      font "Helvetica, 12"
set title 'Heap size' font "Helvetica, 14"

set grid
#set xtics 2	# major
#set ytics 2
#set mxtics 2	# minor
#set mytics 2
#set tics scale 0
#set tics out

set key spacing 1 font "Helvetica, 10"
set key box opaque
set key top left
#set key bottom right
#set key outside
#set key below center horizontal noreverse enhanced autotitle solid
#unset key

# 'lines' for no points
# 'linespoints' for points
# 'pointtype <n>' for different types of points
plot 'heapsize.dat' using 1:2 with lines linecolor rgb '#f44336' title 'Heap', \
     ''             using 1:3 with lines linecolor rgb '#43d436' title 'Unmapped', \
     ''             using 1:4 with lines linecolor rgb '#4336f4' title 'Total'
