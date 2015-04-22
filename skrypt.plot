set terminal png
set grid
#set xtics 250
set output "wykres.png"
# set yrange [328:360]
# set xlabel "Częstotliwość [Hz]"
# set ylabel "Prędkość fali [m/s]"
f(x)=a*x+b

fit f(x) 'wzor.dat' u 2:1 via a,b


plot "wzor.dat" using 2:1 w p notitle pt 13, f(x)