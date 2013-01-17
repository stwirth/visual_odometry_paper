set grid
set term postscript enhanced eps color size 3.4869,2.6152
set term postscript color size 6,4.5
set output "`echo $OUTFILE`"
set title "Translational velocitiy error"
set xlabel "t [s]"
set ylabel "error [m/s]"
plot \
       "`echo $DATAFILE`" using 1:($8-$20) w l title "Velocity Error X", \
       "`echo $DATAFILE`" using 1:($9-$21) w l title "Velocity Error Y" , \
       "`echo $DATAFILE`" using 1:($10-$22) w l title "Velocity Error Z"

