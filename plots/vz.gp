set grid
set term postscript enhanced eps color size 3.4869,2.6152
set term postscript color size 6,4.5
set output "`echo ${FILE%.*}`-vz.eps"
set title "Velocities-Z"
set xlabel "t [s]"
set ylabel "v [m/s]"
set style line 1 lt 1 lc rgb "green" lw 1
set style line 2 lt 1 lc rgb "blue" lw 1
plot "`echo $FILE`" using 1:10 w l ls 1 title "Ground Truth" , "`echo $FILE`" using 1:22 w l ls 2 title "Odometry"
