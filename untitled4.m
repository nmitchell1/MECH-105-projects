y=[1 2 3 4 5 6 7 8]
l=length(y)

y(l)=[]
l=length(y)
for r=1:((l-1)/2)
    o(1,r)=y(2*r-1)
end
le=length(y)-1
for r=1:(le/2)
    e(1,r)=y(2*r)
end

e(length(e))=[]
o(1)=[]
