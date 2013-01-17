set grid
set term postscript enhanced eps color size 3.4869,2.6152
set output "`echo $OUTFILE`"
set title "Velocities-Z"
set xlabel "t [s]"
set ylabel "v [m/s]"
set style line 1 lt 1 lc rgb "#336600" lw 1.3
set style line 2 lt 2 lc rgb "blue" lw 1
plot "`echo $DATAFILE`" using 1:10 w l ls 1 title "Ground Truth" , "`echo $DATAFILE`" using 1:22 w l ls 2 title "Odometry"
