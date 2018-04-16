function[root, fx, ea, iter] = falsePosition(func,xl,xu,es,maxiter)
%falsePosition This function approximates the root of a function using
%   false position
% Inputs:
%   func= name of the function (func=@x function)
%   xl= lower guess x value for root (func(xl) is negative)
%   xu= upper guess x value for root (func(xu) is positive)
%   es= relative error wanted (defaulted to .0001%)
%   maxiter= maximum number of iterations (defaulted to 200)
%Outputs: 
%   root= approximated x value of root
%   fx= function value at root
%   ea= approximate relative error in percent
%   iter= number of iterations performed

if nargin<3 %checking user inputed enough variables
    error('not enough inputs')
end
if nargin<4||isempty(es)==1 %defaulting es to .0001% if user didn't enter es
    es=0.0001;
end
if nargin<5||isempty(maxiter)==1 %defaulting maxiter to 200 if user didn't enter maxiter
    maxiter=200;
end
if func(xl)*func(xu)>0 %checking that there is a root inbetween xl and xu
    error('No root inbetween xl and xu')
end
ea=100; %setting error to 100% so while loop can run
i=0; %counter for while loop, also # of iterations
while i<=maxiter && ea>es  %loop runs until maxiter is reached or approx error is less than error wanted
    root=xu-((func(xu)*(xl-xu))/(func(xl)-func(xu))); %finding root approx
    if func(root)>0 %makes root approx the new upper x value
        ea=abs((root-xu)/root)*100;
        xu=root;
    elseif func(root)<0 %makes root approx the new lower x value
        ea=abs((root-xl)/root)*100;
        xl=root;
    elseif func(root)==0 %if root approx is true root loop will end
        ea=0;
    end
    i=1+i; %counts number of iterations
end
fx=func(root); %calculates function at root
iter=i; %number of iterations
end

