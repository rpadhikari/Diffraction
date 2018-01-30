set term postscript enhanced color 'Helvetica-Bold,16'
set output 'diff01.ps'
set xr [-1.5:1.5]
set yr [0.0:1.0]
set xl 'angle (rad)'
set label at -1.4,0.9 'Slit width = 0.25 mm'
set yl 'Normalized intensity' offset 0.75
set format y '%4.1f'
set format x '%4.1f'
set key top right
set style line 1 lt 1 lw 3 pt 6 ps 2 lc rgb 'blue'
set style line 2 lt 1 lw 2 pt 6 ps 2 lc rgb 'black'
set style line 4 lt 1 lw 2 pt 6 ps 2 lc rgb 'purple'
set style line 3 lt 1 lw 3 pt 6 ps 2 lc rgb 'red'
plot 'out.dat' u 1:2 w l ti '500 nm' ls 1,\
 'out.dat' u 1:3 w l ti '600 nm' ls 2,\
 'out.dat' u 1:4 w l ti '700 nm' ls 3
set output
! ps2pdf diff01.ps
! rm diff01.ps

