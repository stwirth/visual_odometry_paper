set grid
set term postscript enhanced eps color size 3.4869,2.6152
set term postscript color size 6,4.5
set output "`echo $OUTFILE`"
set title "Rotational velocitiy error"
set xlabel "t [s]"
set ylabel "error [rad/s]"
plot \
       "`echo $DATAFILE`" using 1:($11-$23) w l title "Velocity Error Roll", \
       "`echo $DATAFILE`" using 1:($12-$24) w l title "Velocity Error Pitch" , \
       "`echo $DATAFILE`" using 1:($13-$25) w l title "Velocity Error Yaw"

