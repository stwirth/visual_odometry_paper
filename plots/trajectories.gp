set grid
set term postscript enhanced eps color size 3.4869,2.6152
set term postscript color size 6,4.5
set output "`echo $OUTFILE`"
set view equal xyz
set title "Trajectories"
set style line 1 lt 1 lc rgb "green" lw 1
set xlabel "X [m]"
set ylabel "Y [m]"
set zlabel "Z [m]"
splot "`echo $DATAFILE`" using 2:3:4 w l ls 1 title "Ground Truth", "`echo $DATAFILE`" using 14:15:16:1 w l palette title "Odometry", \
        "`echo $DATAFILE`" using 14:15:($13>1000?$16:1/0) w p title "Odometry Failures"
