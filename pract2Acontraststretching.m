clc;
close all;
clear all;
a=imread('cameraman.tif');
r=imread('pout.tif');
[m,n] = size(r);
r1 = input('enter r1 : ');
r2 = input('enter r2 : ');
s1 = input('enter s1 : ');
s2 = input('enter s2 : ');
a= s1/r1;
b= (s2-s1)/(r2-r1);
c= (255-s2)/(255-r2);
for i = 1:m
for j=1:n
 if r(i,j) < r1
 s(i,j) = a*r(i,j);
 
 elseif r(i,j) < r2
 s(i,j) = b*(r(i,j)-r1)+s1;
 
 else 
 s(i,j) = c*(r(i,j)-r2)+s2;
 end
end
end
figure; imshow(uint8(r));
title('original img');
figure; imshow(uint8(s));
title('contrast stretching img');

