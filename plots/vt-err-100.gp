set grid
set term postscript enhanced eps color size 3.4869,2.6152
set term postscript color size 6,4.5
set output "`echo $OUTFILE`"
set title "Translational velocitiy error"
set xlabel "t [s]"
set ylabel "error [%]"
plot \
       "`echo $DATAFILE`" using 1:(abs(($8-$20)/$8*100)) w l title "Velocity Error X", \
       "`echo $DATAFILE`" using 1:(abs(($9-$21)/$9*100)) w l title "Velocity Error Y" , \
       "`echo $DATAFILE`" using 1:(abs(($10-$22)/$10*100)) w l title "Velocity Error Z"

