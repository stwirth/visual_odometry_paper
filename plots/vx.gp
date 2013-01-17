set grid
set term postscript enhanced eps color size 3.4869,2.6152
set term postscript color size 6,4.5
set output "`echo $OUTFILE`"
set title "Velocities-X"
set xlabel "t [s]"
set ylabel "v [m/s]"
set style line 1 lt 1 lc rgb "#336600" lw 1.3
set style line 2 lt 2 lc rgb "blue" lw 1
plot "`echo $DATAFILE`" using 1:8 w l ls 1 title "Ground Truth" , "`echo $FILE`" using 1:20 w l ls 2 title "Odometry"
