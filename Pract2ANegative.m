clc;
close all;
clear all;
a=imread('cameraman.tif');
figure(1);
imshow(a);
title('original image');
%b=rgb2gray(a);
%figure(2);
%imshow(b);
b=255-a; 
figure(3);
imshow(b);
title('negative image');