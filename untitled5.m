A=[2 -6 -1; -3 -1 7; -8 1 -2]
U=A;
[n,m]=size(A);
P=eye(n,m);
L=eye(n,m);
for i=n-1
    [s,r]=max(abs(U([i:n],i))) %finds row r that has max value
    r=r+1
    if r~=i %pivots if max value is not in 1st row
        tempU=U(i,:)
        U(i,:)=U(r,:)
        U(r,:)=tempU
        tempP=P(i,:)
        P(i,:)=P(r,:)
        P(r,:)=tempP
    end
        L(i+1,i)=U(i+1,i)/U(i,i)
        U(i+1,:)=U(i+1,:)-L(i+1,i).*U(i,:)
    i=i+1
end