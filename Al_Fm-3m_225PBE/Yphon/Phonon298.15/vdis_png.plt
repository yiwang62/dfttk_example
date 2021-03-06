reset
set terminal png font Times_Roman 96 size 4096,3072 linewidth 7
set encoding utf8
set pointsize 1.2
set size 0.95,0.95

set output "vdis.png"

set xlabel "Direction"
set ylabel "Phonon frequncy (THz)"

qunit=1.0
eunit=1.000000
funit=1.000000
p0 = 0.000000
pp0 = 0.245686
p1 = 0.245686
pp1 = 0.347452
p2 = 0.593138
pp2 = 0.212770
p3 = 0.805908
pp3 = 0.212770
p4 = 1.018679

set xtics ( '{/Symbol G}' qunit*0.000000, 'X' qunit*0.245686, '{/Symbol G}' qunit*0.593138, 'L' qunit*0.805908, 'X' qunit*1.018679)

set key left top
set ylabel "Frequency (THz)"

plot [x=0:qunit*p4*1.0001] [funit*0.000000:funit*11.000000] \
'vline.dat' using (qunit*$1):(funit*$2) notitle w l lt 4, \
 'vdis.out' index 0 using (qunit*p0+qunit*$1):(funit*$5) notitle w l lt -1, \
 '' index 0 using (qunit*p0+qunit*$1):(funit*$6) notitle w l lt -1, \
 '' index 0 using (qunit*p0+qunit*$1):(funit*$7) notitle w l lt -1, \
 '' index 1 using (qunit*p1+qunit*$1):(funit*$5) notitle w l lt -1, \
 '' index 1 using (qunit*p1+qunit*$1):(funit*$6) notitle w l lt -1, \
 '' index 1 using (qunit*p1+qunit*$1):(funit*$7) notitle w l lt -1, \
 '' index 2 using (qunit*p2+qunit*$1):(funit*$5) notitle w l lt -1, \
 '' index 2 using (qunit*p2+qunit*$1):(funit*$6) notitle w l lt -1, \
 '' index 2 using (qunit*p2+qunit*$1):(funit*$7) notitle w l lt -1, \
 '' index 3 using (qunit*p3+qunit*$1):(funit*$5) notitle w l lt -1, \
 '' index 3 using (qunit*p3+qunit*$1):(funit*$6) notitle w l lt -1, \
 '' index 3 using (qunit*p3+qunit*$1):(funit*$7) notitle w l lt -1

#
#
