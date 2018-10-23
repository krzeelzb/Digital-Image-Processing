clearvars;
close all;
clc;

I=imread('parrot.bmp');
figure(1);
imshow(I);

xReScale=4;
yReScale=4;

[YY,XX]=size(I);

nYY=round(YY*yReScale);
nXX=round(XX*xReScale);

nI=im2double(uint8(zeros(nYY,nXX)));

xStep=XX/nXX;
yStep=YY/nYY;

for ii=0:nYY-1
    for jj =0:nXX-1
        yy=floor(ii*yStep);
        yy2=yy+1;
        if yy>YY-1
            yy=YY-1;
        end
        
        
        if yy2>YY-1
            yy2=YY-1;
        end
        
        
        xx=round(jj*xStep);
        xx2=xx+1;
        
        if xx>XX-1
            xx=XX-1;
        end
        
        if xx2>XX-1
            xx2=XX-1;
        end
        
 
        A = double(I(yy+1,xx+1));
        B = double(I(yy+1,xx2+1));
        C = double(I(yy2+1,xx2+1));
        D = double(I(yy2+1,xx+1));
        
        x=xx-floor(xx);
        y=yy-floor(yy);
        nI(ii+1,jj+1) = [1-x x] * [A D; B C] * [1-y; y];


    end
end
figure(2)
imshow(uint8(nI))