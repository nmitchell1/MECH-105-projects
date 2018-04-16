%% Using Newton Raphson Method to calculate mole ratio of dissociated H2O
clear 
clc
K= .05; %equilibrium constant
pt= 3; %pressure of mixture (atm)
syms x
f= symfun((x/(1-x))*(sqrt((2*pt)/(2+x)))-K,x); %@ f(x)=0 gives answer
fplot(f) %using graph to guess root xi
refline(0,0)
%%
xi=0.05;
df= diff(f); %derivative of f, for Newton Raphson method
Ea= 100; %defining approx error (%)
Es= .001; %selecting how much error I want
while Ea>Es %loop runs until approx error is small enough
    xr= xi-(f(xi)/df(xi)); %newton raphson method
    Ea=abs((xr-xi)/xr)*100; %calculating approx error
    xi=xr; %setting xr to next root guess
end
double(xr) %making xr a number not symbolic
