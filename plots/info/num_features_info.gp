
set title "Features"
set grid
set datafile commentschars "#;%"
set datafile separator ","
set view equal xyz
plot "../../data/info/fovis-cirs-timefixed-run3-info_secs.txt" using 1:6 w l title "# features", \
     "../../data/info/fovis-cirs-timefixed-run3-info_secs.txt" using 1:10 w l title "# used features", \
     "../../data/info/fovis-cirs-timefixed-run3-info_secs.txt" using 1:16 w l title "# matches", \
     "../../data/info/fovis-cirs-timefixed-run3-info_secs.txt" using 1:17 w l title "# inliers", \
     "../../data/info/viso2-cirs-timefixed-run3-info_secs.txt" using 1:5 w l title "# viso matches", \
     "../../data/info/viso2-cirs-timefixed-run3-info_secs.txt" using 1:6 w l title "# viso inliers"

