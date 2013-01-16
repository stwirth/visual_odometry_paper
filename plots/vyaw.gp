set grid
set term postscript enhanced eps color size 6,4.5
set output "`echo ${FILE%.*}`-vyaw.eps"
set xlabel "t [s]"
set ylabel "v [rad/s]"
set yrange [-0.25:0.3]
set style line 1 lt 1 lc rgb "green" lw 1
set style line 2 lt 1 lc rgb "blue" lw 1
plot "`echo $FILE`" using 1:13 w l ls 1 title "Ground Truth" , "`echo $FILE`" using 1:25 w l ls 2 title "Odometry"
