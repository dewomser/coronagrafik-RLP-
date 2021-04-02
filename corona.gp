#
# $Id: corona,v 1.2 2020/11/17 05:12:22 sfeam Exp $
#
# Requires data files "Listen_Corona_RLP.csv" from this directory,


set title "Corona / Covid 19 Übersicht für Worms. Erstellt: "  .strftime("%d.%b %Y %H:%M", time(0)+7200)
set yrange [1:31]
#set xrange [0:1800]
set autoscale x
set xlabel 'Anzahl der Infizierten absolut'
set ylabel 'Tage des Monats 1-30(31)'

set label "Okt. 20" at 330,2
set label "November 2020" at 550,2
set label "Dezember 2020" at 1100,2
set label "Januar 2021" at 1650,2
set label "Feb.21" at 2370,2 
set label "März 21" at 2610,2
set terminal png size 1400,600 enhanced font "Helvetica,15"
set output 'Listen_Corona_RLP.png'
#
set xrange [326:*]
#set datafile separator ','

#plot "Listen_Corona_RLP.csv" using 37:1 with linespoint lw 2 pt 11
set datafile separator ','
plot "Listen_Corona_RLP.csv" using 37:1 with lines

#plot "Listen_Corona_RLP.csv" using 37:1:(sprintf("(%d, %d)", $1, $37,3)) with labels notitle
#plot  "Listen_Corona_RLP.csv" using 37:1:(lasty=$2)
#sprintf("run_%d.dat",n)





#"Listen_Corona_RLP.csv" using 37:1 with points
#,'Listen_Corona_RLP.csv' using 38:1 title "Data2" with lines
#set label 'origin' at 500,20 point lt 1 pt 2 ps 3 offset 1,-1

#set datafile separator ','with  linespoint lw 2 pt 11
#plot "Listen_Corona_RLP.csv" using 37:1 with lines ,'Listen_Corona_RLP.csv' using 37:1 with points





