close all
clc
i = imread ('eight.tif');
%To quantize the given image
i=double(i);
i=i+1;
j=max(max(i));
a=input('how many levels you want to have 1 2 4 8');
b=j/(2^a);
c=floor(i/(b+1));
c1=(c*255)/max(max(c)); % normalizing
figure(1);
imshow(uint8(i));
title('Original image');
figure(2);
imshow(uint8(c1));
title('Quantised image');