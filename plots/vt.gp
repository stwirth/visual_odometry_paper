set term postscript enhanced eps color size 5.0,2.6152
set output "`echo $OUTFILE`"
set grid
set size 1.0, 1.0
set origin 0.0, 0.0
set multiplot
set ylabel "v [m/s]"
set yrange [-0.05:0.4]
set style line 1 lt 1 lc rgb "#336600" lw 3
set style line 2 lt 1 lc rgb "blue" lw 2
set style line 3 lt 1 lc rgb "red" lw 2
set tmargin 1
set bmargin 0
set lmargin 9
set rmargin 3
set size 1.0, 0.5
set origin 0.0, 0.5
set xtics format ""
plot "`echo $DATAFILE`" using 1:(sqrt(($8)*($8)+($9)*($9)+($10)*($10))) w l ls 1 title "Ground Truth", \
     "`echo $DATAFILE`" using 1:(sqrt(($20)*($20)+($21)*($21)+($22)*($22))) w l ls 2 title "Odometry"
set origin 0.0, 0.0
set tmargin 1
set bmargin 3
set xtics
set xtics format "%.0f"
set xlabel "t [s]"
set yrange [-0.01:0.1]
plot "`echo $DATAFILE`" using 1:(abs(sqrt(($20)*($20)+($21)*($21)+($22)*($22))-sqrt(($8)*($8)+($9)*($9)+($10)*($10)))) w l ls 3 title "Absolute Error"
