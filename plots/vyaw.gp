set grid
set term postscript enhanced eps color size 3.4869,2.6152
set output "`echo $OUTFILE`"
set xlabel "t [s]"
set ylabel "v [deg/s]"
set yrange [-22:22]
set style line 1 lt 1 lc rgb "#336600" lw 3
set style line 2 lt 1 lc rgb "blue" lw 2
plot "`echo $DATAFILE`" using 1:($13/pi*180) w l ls 1 title "Ground Truth" , "`echo $DATAFILE`" using 1:($25/pi*180) w l ls 2 title "Odometry"
