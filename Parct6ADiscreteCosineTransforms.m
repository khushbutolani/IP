clc;
clear all;
close all;
I4=[1 1 1 1; 1 1 1 1; 1 1 1 1; 1 1 1 1]
D4=dctmtx(4)
output4 = D4*I4*D4
input4=D4'*output4*D4'
I = imread('cameraman.tif');
J = dct2(I);
K = idct2(J);
imshow(I),title('Input Image');
figure,imshow(log(abs(J)),[]), colorbar, title('DCT of input image');
figure,imshow(K,[0 255]), title('Input Image obtained by IDCT');