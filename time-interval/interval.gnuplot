#!/usr/bin/gnuplot
#
# Adapted from
# https://stackoverflow.com/questions/59179265/gnuplot-start-to-end-position-as-x/59189481#59189481

set terminal svg
set output 'interval.svg'

# create list of unique keys
KeyList = ''
set table $Dummy
    plot 'interval.dat' u (Key='"'.strcol(1).'"', strstrt(KeyList,Key) ? \
    NaN : KeyList=KeyList.Key." ") w table
unset table

# define function for lookup
Lookup(s) = (Index = NaN, sum [i=1:words(KeyList)] \
    (Index = s eq word(KeyList,i) ? i : Index,0), Index)

set yrange [0 : words(KeyList)+1]

set xlabel 'Seconds'
set xtics axis nomirror out 1 font ",8"
set mxtics 5
unset ytics
set grid xtics mxtics linewidth 0.2, linewidth 0.1

plot 'interval.dat' \
        using 2:(Index=Lookup(strcol(1))):($3-$2):(0):(Index) \
        with vector nohead linewidth 1.5 linecolor var notitle , \
     '' using ($3 + 0.03):(Index=Lookup(strcol(1))):($1)  \
	with labels left noenhanced font ',3' notitle
