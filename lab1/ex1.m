clearvars;
clc;

lenaBmpInfo = imfinfo('lena.bmp')
lenaJpgInfo = imfinfo('lena.jpg')

lenaBmpRead = imread('lena.bmp', 'bmp');
lenaJpgRead = imread('lena.bmp', 'bmp');

figure(1);
imshow(lenaBmpRead);
figure(2);
imshow(lenaJpgRead);
% Conversion to gray 

lenaBmpGray = rgb2gray(lenaBmpRead);
figure(3)
imshow(lenaBmpGray);
%%Writing to file 
imwrite(lenaBmpGray, 'lena_gray.bmp');

% Mesh 
figure(4);
colormap gray;
mesh(lenaBmpGray);
figure(5)
plot(lenaBmpGray(10,:));
figure(6)
plot(lenaBmpGray(:,20));