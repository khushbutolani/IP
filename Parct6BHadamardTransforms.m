clc;
clear all;
close all;
A=[1 1 1 1; 1 1 1 1; 1 1 1 1; 1 1 1 1];
disp('The input matrix is'),A
H4=hadamard(4);
disp('The hadamard matrix for N=4 is: '), H4
B = 1/4*H4*A*H4;
disp('The hadamard transform of the input matrix is'),B
A=1/4*H4'*B*H4';
disp('The inverse hadamard is'),A
A=zeros(256,256);
A(100:150,100:150)=1;
subplot(1,3,1),imshow(A),title('Input Image');
H256=hadamard(256);
B=1/256*H256*A*H256;
subplot(1,3,2),imshow(B),title('hadamard of the input image');
A=1/256*H256'*B*H256';
subplot(1,3,3),imshow(A),title('Input Image obtained by inverse transform');