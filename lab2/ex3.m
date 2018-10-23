%porównanie interpolacji
clearvars;
close all;
clc;

scale = 6;

img = imread('parrot.bmp', 'bmp');

figure()
nearest = imresize (img, scale, 'nearest');
imshow(nearest)
figure()
bilinear = imresize (img, scale, 'bilinear');
imshow(bilinear)
figure()
bicubic = imresize (img, scale, 'bicubic');
imshow(bicubic)
 
img = imread('clock.bmp', 'bmp');

figure()
nearest = imresize (img, scale, 'nearest');
imshow(nearest)
figure()
bilinear = imresize (img, scale, 'bilinear');
imshow(bilinear)
figure()
bicubic = imresize (img, scale, 'bicubic');
imshow(bicubic)

img = imread('chessboard.bmp', 'bmp');

figure()
nearest = imresize (img, scale, 'nearest');
imshow(nearest)
figure()
bilinear = imresize (img, scale, 'bilinear');
imshow(bilinear)
figure()
bicubic = imresize (img, scale, 'bicubic');
imshow(bicubic)