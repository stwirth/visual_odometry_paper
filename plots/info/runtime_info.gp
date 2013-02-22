
set title "Runtime"
set grid
set datafile commentschars "#;%"
set datafile separator ","
set view equal xyz
set yrange [0:0.2]
plot \
     "../../data/info/fovis-cirs-timefixed-run3-info_secs.txt" using 1:19 w l title "fovis", \
     "../../data/info/fovis-cirs-timefixed-run3-info_secs.txt" using 1:($5/1000) w l title "fast threshold / 1000", \
     "../../data/info/fovis-cirs-timefixed-run3-info_secs.txt" using 1:($6/100000) w l title "#kp / 100000", \
     "../../data/info/viso2-cirs-timefixed-run3-info_secs.txt" using 1:7 w l title "viso"

