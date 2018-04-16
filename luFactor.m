function [L,U,P] = luFactor(A)
%luFactor takes a square matrix A, and creates an upper and lower
%triangular matrix from A using pivoting
%such that P*A=L*U
%INPUTS: A= square matrix
%OUTPUTS: L= lower triangluar matrix
%         U= upper triangular matrix
%         P= pivot matrix
U=A;
[n,m]=size(A);
if n~=m|| n~=3
    error('Matrix A must be 3x3')
end
P=eye(n,m);
L=eye(n,m);
[s,r]=max(abs(U(:,1))); %finds row r that has max value
if r~=1 %pivots if max value is not in 1st row
    tempU=U(1,:);
    U(1,:)=U(r,:);
    U(r,:)=tempU;
    tempP=P(1,:);
    P(1,:)=P(r,:);
    P(r,:)=tempP;
end
L(2,1)=U(2,1)/U(1,1);
L(3,1)=U(3,1)/U(1,1);
U(2,:)=U(2,:)-L(2,1).*U(1,:);
U(3,:)=U(3,:)-L(3,1).*U(1,:);
[s,r]=max(abs(U([2:n],2)));
r=r+1;
if r~=2
    tempU=U(2,:);
    U(2,:)=U(r,:);
    U(r,:)=tempU;
    tempL=L(2,1);
    L(2,1)=L(3,1);
    L(3,1)=tempL;
    tempP=P(2,:);
    P(2,:)=P(r,:);
    P(r,:)=tempP;
end
L(3,2)=U(3,2)/U(2,2);
U(3,:)=U(3,:)-L(3,2).*U(2,:);










end