reset    
                                                                   
set ylabel 'time(sec)'
set xlabel 'N'
set key width 2
set title 'comparison'
set term png enhanced font 'Verdana,10'
set datafile separator "," 
set output 'out.png'
set grid
set key left

plot "result_clock_gettime.csv" using 1:2 with lines title 'baseline', \
'' using 1:3 with lines title 'openmp_2', \
'' using 1:4 with lines title 'openmp_4', \
'' using 1:5 with lines title 'avx', \
'' using 1:6 with lines title 'avx unroll', \
'' using 1:7 with lines title 'leibniz', \
'' using 1:8 with lines title 'leibniz avx', \
'' using 1:9 with lines title 'leibniz avx unroll'
