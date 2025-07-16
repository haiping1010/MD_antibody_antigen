set terminal png size 2000,600 enhanced font "Times New Roman,40"

set output ARG3
set yrange [0:1]
set xrange [0:40]
set ylabel "RMSD (nm)";set xlabel "Simulation time (ns)"
plot ARG1 using 1:2 title 'TIPE2 C{/Symbol a}' w l lc "blue" lw 5, ARG2 using 1:2 title  ARG4  w l lc "red" lw 5
