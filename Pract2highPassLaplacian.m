A=ones(200,200);
A(30:60,30:60)=0;
A(70:150,50:170)=0
figure(1) ,subplot(1,2,1)
imshow(A)
AM=[1 1 1;1 -8 1;1 1 1];
B=conv2(A,AM);
subplot(1,2,2), imshow(B)
a=imread('pout.tif');
h1=[0 -1 0;-1 4 -1;0 -1 0]
h2=[-1 -1 -1;-1 8 -1; -1 -1 -1];
h3=[-1 -1 -1;-1 9 -1; -1 -1 -1];
c1=conv2(a,h1,'same');
c2=conv2(a,h2,'same');
c3=conv2(a,h3,'same');
subplot(2,2,1),imshow(a),title('Original image')
subplot(2,2,2),imshow(uint8(c1)),title('Laplacian sharpening 4 at center')
subplot(2,2,3),imshow(uint8(c2)),title('Laplacian sharpening 8 at center ')
subplot(2,2,4),imshow(uint8(c3)),title(' Laplacian sharpening 9 at center')