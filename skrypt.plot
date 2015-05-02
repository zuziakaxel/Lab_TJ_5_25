reset
set terminal epslatex size 13cm,9cm color colortext
set output 'cechowanie.tex'
set grid

set style line 1 linecolor rgb '#314F77' linetype 1 linewidth 5 

set format '$%g$'
# set yrange [328:360]
set xlabel "Gęstość wodoru w próbce wzorcowej $\\rho_H $ [g/cm$^3$]"
set ylabel "Liczba zliczeń J"
f(x)=a*x+b

fit f(x) 'wzor.dat' u 2:1 via a,b


plot "wzor.dat" using 2:1 w p notitle pt 13, f(x) w lines ls 1 title '$ J = 430000 \rho _H  + 9500 $'
