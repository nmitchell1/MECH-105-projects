clc
clear
Vcone= 0; %Volume of cone
Vcyl= 0; %Volume of cylinder
rcyl= 25/2; %radius of cylinder
rcone= 0; %radius of cone at height h
Volume= 0; %total volume
h= input('What is the height of the float? '); %asking for height
while h>33|| h<0 %checking height is a correct value, must be between 0 and 33
    disp('Please enter a height inbetween 0 and 33')
    h= input('What is the height of the float? '); %if h is incorrect, reasks for input
end
if h>19 %height being larger than 19 adds volume of cone
    rcone= ((h-19)/14)*10.5+25; %equation to find radius of cone at h
    Vcone= (1/3)*pi*h*rcone^2; %volume of cone equation
    Vcyl= pi*19*rcyl^2; %volume of full cylinder
else %only calculates volume of cylinder since cone is empty
    Vcyl= pi*h*rcyl^2; %equation for cylinder
end
Volume= Vcyl+Vcone %adds the two  volumes together for total volume