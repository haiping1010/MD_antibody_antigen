  set terminal png size 1800,1000 enhanced font "Helvetica,20"
set output "hbond_test.png"
#set xrange [0:20000]

set title font ',10' 
set label font ',10'

set xtics font ", 30"
set ytics font ", 30"
set tics font ", 30"
set key font ",30"
set yrange [0:1800]

#between nitrogenous bases
#set arrow from 2100,0 to 2100,22 nohead lc 0 lw 3 dt "."

set style line 1 lc rgb "black" lw 4
set style line 2 lc rgb "red"  lw 0.5  pi -1 ps 0.5  lt  1  pt 7
set style line 3 lc rgb "green"  lw 4
set style line 4 lc rgb "blue"   lw 2.5 

set style line 5 lc rgb "cyan"  lw 4
set style line 6 lc rgb "magenta"  lw 2.5  
set style line 7 lc rgb "yellow"   lw 4
set style line 8 lc rgb "dark-yellow"  lw 2.5  
set style line 9 lc rgb "light-blue"  lw 2.5
set style line 10 lc rgb "light-green"  lw 2.5
set style line 11 lc rgb "dark-red"  lw 2.5

#smooth  csplines

set ylabel 'FES(kJ/mol)' font ", 30";set xlabel "Coordination number (ns)" font ", 30";set y2label  ' ';
set title font ',10'
set label font ',10'
set key font ",20"
#set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 pi -1 ps 1.5
plot  'f870-0968_run_fes.dat' using 1:2 title 'ARG1'   ls 2  w lp 
