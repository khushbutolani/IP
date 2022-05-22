clc;
clear all;
close all;
a=imread('cameraman.tif');
subplot(3,3,1);
imshow(a)
title('1st input image')
b=imread('rice.png');
subplot(3,3,2);
imshow(b)
title('2nd input image')
c=imadd(a,b);
subplot(3,3,3);
imshow(c)
d=imsubtract(a,b);
subplot(3,3,4);
imshow(d)
title('Subtraction of images')
e=immultiply(a,b);
subplot(3,3,5);
imshow(e)
title('Multiplication of images')
f=imdivide(a,b);
subplot(3,3,6);
imshow(f)
title('Division of images');