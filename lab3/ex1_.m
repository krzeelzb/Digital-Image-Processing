clearvars;
close all;
clc;

load 'funkcjeLUT.mat';

lena='lena.bmp';

figure(1)
LUT(lena,kwadratowa)
title('kwadratowa')


figure(2)
LUT(lena,log)
title('log')

figure(3)
LUT(lena,odwlog)
title('odwlog')

figure(4)
LUT(lena,odwrotna)
title('odwrotna')

figure(5)
LUT(lena,pierwiastkowa)
title('pierwiastkowa')

figure(6)
LUT(lena,pila)
title('pila')

figure(7)
LUT(lena,wykladnicza)
title('wykladnicza')


%plot(kwadratowa)

