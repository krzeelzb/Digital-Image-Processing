clearvars;close all; clc;

lena1=imread('lena1.bmp');
lena2=imread('lena2.bmp');
lena3=imread('lena3.bmp');
lena4=imread('lena4.bmp');



figure(1)
subplot(2,4,1);
imshow(lena1);
subplot(2,4,2);
imshow(lena2);
subplot(2,4,3);
imshow(lena3);
subplot(2,4,4);
imshow(lena4);
subplot(2,4,5);
imhist(lena1,256);
subplot(2,4,6);
imhist(lena2,256);
subplot(2,4,7);
imhist(lena3,256);
subplot(2,4,8);
imhist(lena4,256);

figure(2)
hist1=imread('hist1.bmp');
subplot(2,1,1);
imshow(hist1);
subplot(2,1,2);
imhist(hist1,256)

J=imadjust(hist1);

figure(3)
subplot(2,1,1);
imshow(J);
subplot(2,1,2);
imhist(J,256)

%histogram skumulowany
[H,x]=imhist(hist1,256);
C = cumsum(H);
k=max(C)/max(H);
C2=C/k;

figure(4);
hold on;
plot(x,H);
plot(x,C2);
hold off;


figure(5);
subplot(2,1,1);
imhist(hist1,256);
subplot(2,1,2);
plot(x,C2);

C = uint8( C / max(C) * 255);
lut = intlut(hist1, C);

figure(6);
subplot(2,1,1);
imshow(hist1);
subplot(2,1,2);
imshow(lut);



figure(7);
subplot(1,3,1);imshow(hist1);
subplot(1,3,2);histeq(hist1, 256);
subplot(1,3,3);imshow(adapthisteq(hist1),[]);

hist2 = imread('hist2.bmp');
hist3 = imread('hist3.bmp');
hist4 = imread('hist4.bmp');

figure(5)
subplot(2,2,1); imshow(hist2);
[H, x] = imhist(hist2);
C = cumsum(H);

C = uint8( C / max(C) * 255);
lut = intlut(hist2, C);
subplot(2,2,2); imshow(lut);
subplot(2,2,3); imshow(histeq(hist2));
subplot(2,2,4); imshow(adapthisteq(hist2));
