function [sM] = specialMatrixHW5(m,n)
%SPECIALMATRIXHW5 This function creates a mXn matrix, where the first row
%and column count up from 1 to n or m. The other elements are sums of the
%element to its left and the element above it.
%Inputs: m= amount of rows needes
%        n= amount of columns needed
%Outputs: sM= mXn matrix
narginchk(2,2) %checking that user entered 2 values

for c=1:n %runs through each column
    for r=1:m %runs through each row
        if r==1 
            sM(r,c)=c; %fills first row with column number
        elseif c==1
            sM(r,c)=r; %fills first row with row number
        else
            sM(r,c)= sM(r-1)+sM(c-1); %fills the rest of the elements with sum of left and top element
        end
    end
end
end

