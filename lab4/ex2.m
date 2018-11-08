clearvars;close all; clc;


photo1=imread('phobos.bmp');
histPhoto=histeq(photo1, 256);

figure(1)
subplot(2,1,1);
imshow(photo1);
subplot(2,1,2);
imshow(histPhoto);


load histogramZadany;
obraz = histeq(photo1, histogramZadany);
figure(2)
subplot(1,3,1); plot(histogramZadany);
subplot(1,3,2); imshow(obraz);
subplot(1,3,3); imhist(obraz);

adj=imadjust(photo1);
figure(3)
subplot(2,1,1);
imshow(adj);
subplot(2,1,2);
imshow(adapthisteq(photo1),[]);
