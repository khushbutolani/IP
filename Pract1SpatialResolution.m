clc;
close all;
clear all;
a = imread('eight.tif');
[row, col]= size(a);
i=1;
j=1;
for x=1:2:row
for y=1:2:col
c(i,j)= a(x,y);
j= j+1;
end
j=1;
i= i+1;
end 
figure(1), imshow(a)
figure(2), imshow(c)
figure(3),
imagesc(a),colormap(gray)
figure(4)
imagesc(c),colormap(gray)