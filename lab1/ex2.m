 clearvars;
clc;
close all;

lena = imread('lena_gray.bmp');
[X, map] = gray2ind(lena);
figure(1)
imshow(X, map);
map = colormap (winter);
figure(2)
imshow(X, map);
map = colormap (colorcube);
figure(3)
imshow(X, map);s