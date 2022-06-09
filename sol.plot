set term postscript enhanced color 'Helvetica-Bold,20'
set output 'curve.ps'
set xr [0:4*pi]
y1=-12; y2=12
set yr [y1:y2]
set sample 4000
fx1(x)=x
fx2(x)=tan(x)

set style arrow 1 lt 0 lw 2 lc rgb 'black' nohead
set style line 1 lt 1 lw 3 lc rgb 'blue'
set style line 2 lt 1 lw 3 lc rgb 'red'

set arrow from 0.5*pi,y1 to 0.5*pi,y2 as 1
set arrow from 1.5*pi,y1 to 1.5*pi,y2 as 1
set arrow from 2.5*pi,y1 to 2.5*pi,y2 as 1
set arrow from 3.5*pi,y1 to 3.5*pi,y2 as 1

plot fx1(x) w l ti 'y=a' ls 1,\
     fx2(x) w l ti 'y=tan(a)' ls 2
set output

! ps2pdf curve.ps
! rm curve.ps

