close all;
clear all;
clc;
im=imread('pout.tif');
im1=imnoise(im,'salt & pepper',0.05);
figure(1)
imshow(im1);
fc=20;%Cutoff frequency
n=1;
[co,ro] = size(im);
cx = round(co/2); % find the center of the image
cy = round (ro/2);
imf=fftshift(fft2(im1));
figure(2)
imshow(imf);
H=zeros(co,ro);
for i = 1 : co
for j =1 : ro
d = (i-cx).^2 + (j-cy).^ 2;
H(i,j) = 1/(1+((d/fc/fc).^(2*n)));
end;
end;
figure(3)
imshow(H)
outf = imf .* H;
out = abs(ifft2(outf));
figure(4)
imshow(outf),title('F(u,v)*H(u,v)'),
figure(5)
imshow(im1),title('Original Image'),figure (6),imshow(uint8(out)),title('Lowpass Filterd Image')
close all;
clear all;
clc;
im=imread('pout.tif');
fc=10;
imf = fftshift(fft2(im));
[co,ro]=size(im);
out = zeros(co,ro);
cx = round(co/2); % find the center of the image
cy = round (ro/2);
H = zeros(co,ro);
for i = 1 : co
for j = 1 : ro
d = (i-cx).^2 + (j-cy).^2;
H(i,j) = exp(-d/2/fc/fc);
end;
end;
outf= imf.*H;
out=abs(ifft2(outf));
imshow(im),title('Original Image'),figure,imshow(uint8(out)),
title('GaussianLowpass Filterd Image')
figure,imshow(H),title('2D View of H'),figure,surf(H),
title('3D View of H');