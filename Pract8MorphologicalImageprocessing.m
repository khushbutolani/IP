clc;
close all;
a = imread ('circles.png');
b = im2bw(a,0.4);
subplot(2,3,1);
imshow(b);
title('original binary image');
c = bwmorph(b,'remove'); 
subplot(2,3,2);
imshow(c);
title('outline of original image');
d = bwmorph(b,'skel',Inf); 
subplot(2,3,3);
imshow(d);
title('skeleton of original image');
se = strel('line',11,90); 
e = imdilate(b,se); 
subplot(2,3,4);
imshow(e), 
title('dilation of original image');
f = imerode(b,se); 
subplot(2,3,5);
imshow(f), 
title('erosion of original image');
g = bwmorph(b,'bothat'); 
subplot(2,3,6);
imshow(g);
title('bottom hat operation on original image');
