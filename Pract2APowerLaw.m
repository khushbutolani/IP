clc;
close all;
clear all;
a=imread('cameraman.tif');
gamma=1.1; 
g=double(a).^gamma;
figure(5);
imshow(uint8(g));
title('power law transform');
