close all,
clear all,
clc,
Orig=imread('football.jpg');
PlotRow = 2;
PlotCol = 2;
subplot(PlotRow,PlotCol,1); imshow(Orig);
[row col c] = size(Orig);
str = strcat('Original Image of Size = [',num2str(size(Orig)),']');
title(str);
Blank = zeros(row,col);
R = Orig(:, :, 1);
R_Comp_Image = cat(3,R,Blank,Blank);
subplot(PlotRow,PlotCol,2); imshow(R_Comp_Image);
title('R-Component Image');
G = Orig(:, :, 2);
G_Comp_Image = cat(3,Blank,G,Blank);
subplot(PlotRow,PlotCol,3); imshow(G_Comp_Image);
title('G-Component Image');
B = Orig(:, :, 3);
B_Comp_Image = cat(3,Blank,Blank,B);
subplot(PlotRow,PlotCol,4); imshow(B_Comp_Image);
title('B-Component Image');
PlotRow = 3;
PlotCol = 2;
figure,
subplot(PlotRow,PlotCol,1); imshow(R_Comp_Image);
title('R-Component Image');
subplot(PlotRow,PlotCol,2);
[P,X] = imhist(R); plot(X,P,'r');
title('R-Component Image Histogram');
xlabel(' Pixel Intensity (0 – 255) —>');
ylabel('No. of Pixels —>');
subplot(PlotRow,PlotCol,3); imshow(G_Comp_Image);
title('G-Component Image');
subplot(PlotRow,PlotCol,4);
[P,X] = imhist(G); plot(X,P,'g');
title('G-Component Image Histogram');
xlabel(' Pixel Intensity (0 – 255) —>');
ylabel('No. of Pixels —>');
subplot(PlotRow,PlotCol,5); imshow(B_Comp_Image);
title('B-Component Image');
subplot(PlotRow,PlotCol,6);
[P,X] = imhist(B); plot(X,P,'b');
title('B-Component Image Histogram');
xlabel('— Pixel Intensity (0 – 255) —>');
ylabel('No. of Pixels —>');