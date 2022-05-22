clc;
close all;
clear all;
img =imread('C:\Users\khyati\Pictures\pic1.png');
imhist(img);
img =imread('C:\Users\khyati\Pictures\pic1.png');
figure(1);
imshow(img);
img= rgb2gray(img);
[x,y] = size(img);
frequency = 1:256;
count = 0;
for i = 1:256
for j = 1:x
for k = 1:y
if img(j,k) == i-1
count = count + 1;
end
end
end
frequency(i) = count;
count = 0;
end
n = 0 : 255;
stem(n,frequency);
grid on;
ylabel('number of pixels with suchintensity levels -->');
xlabel('intensity levels -->');
title('histogram')