set grid
set term postscript enhanced eps color size 3.4869,2.6152
set term postscript color size 6,4.5
set output "`echo $OUTFILE`"
set title "Rotational velocitiy error"
set xlabel "t [s]"
set ylabel "error [%]"
plot \
       "`echo $DATAFILE`" using 1:(abs(($11-$23)/$11*100)) w l title "Velocity Error Roll", \
       "`echo $DATAFILE`" using 1:(abs(($12-$24)/$12*100)) w l title "Velocity Error Pitch" , \
       "`echo $DATAFILE`" using 1:(abs(($13-$25)/$13*100)) w l title "Velocity Error Yaw"

