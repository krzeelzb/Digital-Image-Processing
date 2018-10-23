%rozdzielczość
clearvars;
close all;
clc;

lena= imread('lena.bmp');
figure(1)
imshow(lena)

lena256=imresize(lena,0.5,'bicubic');
figure(2)
imshow(lena256,'InitialMagnification',200);



lena128=imresize(lena,0.25,'bicubic');
figure(3)
imshow(lena128,'InitialMagnification',400);




lena64=imresize(lena,0.125,'bicubic');
figure(4)
imshow(lena64,'InitialMagnification',800);





