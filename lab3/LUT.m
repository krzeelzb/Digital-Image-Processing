function LUT(imagine,code)
   figure()
   I=imread(imagine);
   
   intlutI=intlut(I,code);
   
   subplot(3,1,1)
   imshow(I)
   title('orginał')
   
   subplot(3,1,2)
   imshow(intlutI)
   title('przekształcony')
   
   subplot(3,1,3)
   plot(code)
   title('wykres przekodowania')
   

end

