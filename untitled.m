clear
clc
close all
% finding mole fraction (x) of H2O that dissociates
K= 0.05; %equilibrium constant
pt= 3; %total pressure
func=@(x) K-((x/(1-x))*sqrt((2*pt)/(2+x))); %where func(x)=0 then x is our solution
x=linspace(-1,1,1000);
fplot(x,func(x))


