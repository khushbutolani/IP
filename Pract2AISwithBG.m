clc;
close all;
clear all;
a=imread('cameraman.tif');
figure(1);
imshow(a);
title('original image');
p = imread('cameraman.tif');
z = double(p);
[r,c] = size(z);
for i = 1:1:r
 for j=1:1:c
 if ((z(i,j) > 50)) && (z(i,j) < 150)
 z(i,j) = 255; 
 else 
 z(i,j) = p(i,j); 
 end
 end 
end
figure (1); imshow((p));
title('original img');
figure(2); imshow(uint8(z));
title('intensity slicing with BG');
