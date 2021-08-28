clear all
close all
clc

%Number of Train pictures
n = 60;
%Change image dimension
M=100;
X_train=TrainMatrix(n,M);

m=mean(X_train);
% MI=reshape(m,[100,100]);
% imshow(uint8(imresize(MI,[128,128])),[]);

[Pca,T] = CovMatrix(X_train,m,n);

Test(M,m,n,Pca,T);












