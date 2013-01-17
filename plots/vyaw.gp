set grid
set term postscript enhanced eps color size 3.4869,2.6152
set output "`echo $OUTFILE`"
set xlabel "t [s]"
set ylabel "v [rad/s]"
set yrange [-0.25:0.3]
set xrange [0:700]
set style line 1 lt 1 lc rgb "#336600" lw 3
set style line 2 lt 1 lc rgb "blue" lw 2
plot "`echo $DATAFILE`" using 1:13 w l ls 1 title "Ground Truth" , "`echo $DATAFILE`" using 1:25 w l ls 2 title "Odometry"
