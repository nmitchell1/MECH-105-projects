function I = Simpson(x,y)
%SIMPSON: evaluate the approximate integral using the simpsons 1/3 rule
%   INPUTS: x= matrix of x values
%           y= matrix of coorelating y values
%   OUTPUTS: I= approximation of integral

if length(x)~=length(y)
    error('length of x must be length of y')
end
dx=diff(x);
if min(dx)~=max(dx)
    error('x must be equally spaced')
end
I=0;
l=length(x);
if rem(length(x),2)==0
    warning('trapezoidal rule is used for last interval (odd number of intervals')
    I=I+((x(l)-x(l-1))*((y(l)+y(l-1))/2));
    x(l)=[];
    y(l)=[];
end
l=length(y);
le=(length(y)-1);
for r=1:(le/2)
    e(1,r)=y(2*r);
end
lo=length(y);
for s=1:((lo-1)/2)
    o(1,s)=y((2*s)-1);
end
o(1)=[];
I=I+((x(l)-x(l-1))*((y(1)+4.*[e]+2.*[o]+y(l))/(3*(l-1))));
I=sum(I)











end

