set grid
set term postscript enhanced eps color size 3.4869,2.6152
set term postscript color size 6,4.5
set output "`echo $OUTFILE`"
set title "Translational velocities"
set xlabel "t [s]"
set ylabel "v [m/s]"
set style line 1 lt 1 lc rgb "green" lw 1
set style line 2 lt 1 lc rgb "blue" lw 1
set style line 3 lt 1 lc rgb "red" lw 1
plot "`echo $DATAFILE`" using 1:(sqrt(($8)*($8)+($9)*($9)+($10)*($10))) w l ls 1 title "Ground Truth", \
     "`echo $DATAFILE`" using 1:(sqrt(($20)*($20)+($21)*($21)+($22)*($22))) w l ls 2 title "Odometry", \
     "`echo $DATAFILE`" using 1:(sqrt(($20)*($20)+($21)*($21)+($22)*($22))-sqrt(($8)*($8)+($9)*($9)+($10)*($10))) w l ls 3 title "Error"
