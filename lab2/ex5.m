%poziomy szarości

clearvars;
close all;
clc;

lena= imread('lena.bmp');
lena128=imresize(lena,0.25,'bicubic');

lena1=imadjust(lena128,[0 1],[0 31/255]);
lena2=imadjust(lena128,[0 1],[0 15/255]);
lena3=imadjust(lena128,[0 1],[0 7/255]);
lena4=imadjust(lena128,[0 1],[0 3/255]);
lena5=imadjust(lena128,[0 1],[0 1/255]);
    
figure(1)
subplot(3,3,1)
imshow(lena1,[])
subplot(3,3,2)
imshow(lena2,[])
subplot(3,3,3)
imshow(lena3,[])
subplot(3,3,4)
imshow(lena4,[])
subplot(3,3,5)
imshow(lena5,[])
