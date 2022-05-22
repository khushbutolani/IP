clc
clear all
close all
a=imread('tire.tif')
% a=imread('C:\deer1.jpg');
%perform histogram equalization
b=histeq(a);
subplot(2,2,1),imshow(a),title('original image'),
subplot(2,2,2),imshow(b),title('After histogram equalization'),
subplot(2,2,3),imhist(a),title('original histogram')
subplot(2,2,4),imhist(b),title('After histogram equalization')