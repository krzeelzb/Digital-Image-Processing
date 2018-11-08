clearvars;close all; clc;


%lenaRGB=imread('lenaRGB.bmp');
lenaRGB=imread('jezioro.jpg');
figure(1);
imshow(lenaRGB);

lenaR=lenaRGB(:,:,1);
lenaG=lenaRGB(:,:,2);
lenaB=lenaRGB(:,:,3);

figure(2);
subplot(6,1,1);
imshow(lenaR);
subplot(6,1,2);
imhist(lenaR,256);
subplot(6,1,3);
imshow(lenaG);
subplot(6,1,4);
imhist(lenaG,256);
subplot(6,1,5);
imshow(lenaB);
subplot(6,1,6);
imhist(lenaB,256);


Re = histeq(lenaR);
Ge = histeq(lenaG);
Be = histeq(lenaB);


obrazEQ=lenaRGB;
obrazEQ(:,:,1)=Re;
obrazEQ(:,:,2)=Ge;
obrazEQ(:,:,3)=Be;

figure(3);
imshow(obrazEQ);


hsv = rgb2hsv(lenaRGB);
h = hsv(:, :, 1); 
s = hsv(:, :, 2); 
v = hsv(:, :, 3); 

figure(3);
subplot(3,1,1);
imhist(h);
subplot(3,1,2);
imhist(s);
subplot(3,1,3);
imhist(v);

newV=histeq(v,256);
hsv(:, :, 3)=newV;

I=hsv2rgb(hsv);
figure(4)
imshow(I);




