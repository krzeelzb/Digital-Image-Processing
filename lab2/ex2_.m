clearvars;
close all;
clc;

parrot = imread('parrot.bmp', 'bmp');
figure(1);
imshow(parrot);

xrs = 4;
yrs = 4;

[Y,X] = size(parrot);

nY = Y * yrs;
nX = X * xrs;

nParrot = uint8(zeros(nY, nX));

nDblParrot = double(zeros(nY,nX));
dblParrot = double(parrot);

xStep = X/nX;
yStep = Y/nY;

for ii = 0:nY-1
   for jj = 0:nX-1
       
       i = ii * yStep;
       iFloor = floor(i);
       normI = i - iFloor;
       if( i > Y-1)
          i = Y-1;
       end
       
       j = jj * xStep;
       jFloor = floor(j);
       normJ = j - jFloor;
       if( j > X-1)
          j = X-1;
       end
       
       if(iFloor == 0)
            iFloor = 1;
       end
       
       if(jFloor == 0)
            jFloor = 1;
       end
       
        m1 = [(1-normI) normI];
        m2 = [dblParrot(iFloor, jFloor), dblParrot(iFloor, jFloor + 1); dblParrot(iFloor+1, jFloor), dblParrot(iFloor + 1, jFloor+1)];
        m3 = [(1-normJ); normJ];
        fABCD = mtimes(mtimes(m1,m2),m3);
        nDblParrot(ii+1, jj+1) = fABCD;
   end
end

figure();
newImg = uint8(nDblParrot);
imshow(newImg);