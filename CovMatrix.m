function [Pca,T] = CovMatrix(X_train,m,n)

Xp=X_train;
for i=1:n
    X_train(i,:)=X_train(i,:)-m;
end
%Covariance matrix
Q=(X_train'*X_train)/(n-1);
[eVecMatrix,eValMatrix]=eig(Q);
%Sort all eigen values
eVal=diag(eValMatrix);
[eValSorted,ind]=sort(eVal,'descend');
eVecSorted=eVecMatrix(:,ind);

%Number of dominent eigen values
L = 50;
Pca=eVecSorted(:,1:L);
T=zeros(n,L);
for i=1:n
    T(i,:)=(Xp(i,:)-m)*Pca;
end
