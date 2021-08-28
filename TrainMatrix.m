function X_train = TrainMatrix(n,M)

%Find the size of each picture
oneImage=imread('Train\1.jpg');
[rows, columns]=size(oneImage);

%Allocate space for all images
X_train=zeros(n,(M*M));

%Make the X matrix - Reading and Reshaping
for count=1:n
    I=imread(sprintf('Train\\%d.jpg',count));
    I=imresize(I,[M,M]);
    X_train(count,:)=reshape(I,[1,M*M]);
end