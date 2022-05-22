% Color Image segmentation
clc
clear all
close all
a=imread('peppers.png');
%Conversion of RGB to HSV
b=rgb2hsv(a); 
figure(1); imshow(a),title('original image')
figure(2); imshow(b),title('hsv image')
