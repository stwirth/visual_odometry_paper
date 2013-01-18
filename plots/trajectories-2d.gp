set grid
set term postscript enhanced eps color size 3.4869,2.6152
set output "`echo $OUTFILE`"
set xlabel "X [m]"
set ylabel "Y [m]"
set title "Trajectories 2D"
set size ratio -1
set style line 1 lt 1 lc rgb "green" lw 2
set style line 2 lt 2 lc rgb "blue" lw 3
plot "`echo $DATAFILE`" using 2:3 w l ls 1 title "Ground Truth", "`echo $DATAFILE`" using 14:15 w l ls 2 title "Odometry"
