clearvars;
close all;
clc;

lena=imread('lena.bmp');
jet=imread('jet.bmp');

two=imadd(lena,jet,'uint16');
figure(1)
imshow(two,[])


combLena= imlincomb(1.5,lena);
figure(2)
imshow(combLena)

combJet=imlincomb(1,jet);
figure(3)
imshow(combJet)


sub= imsubtract(lena,jet);
figure(4)
imshow(sub,[])


lena16=int16(lena);
jet16=int16(jet);

sub2= imsubtract(lena16,jet16);
figure(5)
imshow(sub2,[])

absdiff=imabsdiff(lena,jet);
figure(6)
imshow(absdiff,[])


figure(7);

mul = immultiply(lena, 0.5);
imshow(mul);

figure(8);
mask = boolean(imread('kolo.bmp'));
mulMask = immultiply(lena, mask);
imshow(mulMask);

figure(7);
neg = imcomplement(lena);
imshow(neg);
