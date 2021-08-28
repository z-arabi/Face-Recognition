function Test(M,m,n,Pca,T)

[fileN,pathN]=uigetfile('*.*','Select the File to be Tested');
filewithpath=strcat(pathN,fileN);
img=imread(filewithpath);
img_c=img;
img=imresize(img,[M,M]);
img=double(reshape(img,[1,M*M]));
imgpca=(img-m)*Pca;
dist=zeros(n,1);
for i=1:n
    dist(i)=sum(abs(T(i,:)-imgpca));
end
[result,ind]=min(dist);
resultimg=imread(sprintf('Train\\%d.jpg',ind));
subplot(121)
imshow(img_c);
title('test file');
subplot(122)
imshow(resultimg);
title('found file');