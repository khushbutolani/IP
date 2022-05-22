clc;
close all;
clear all;
a=imread('cameraman.tif');
figure(1);
imshow(a);
title('original image');
[r,c] = size(a);
Thre = input('Enter the value of Thr =');
for i = 1:r
for j=1:c
 if (a(i,j)>Thre)
 Out(i,j) = 1;
 else
 Out(i,j) = 0;
 end
end
end
subplot(121),imshow(a); title('Input Image');
subplot(122),imshow(Out); title('Threshold Image');
