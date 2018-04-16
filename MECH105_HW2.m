%% Problem 1
% Plotting the charge of a capacitor as a function of time
q0= 10; % defining initial charge
R= 60; % defining resistance
L= 9; % defining inductance
C= .00005; % defining capacitance
t= linspace(0, 0.8, 100); % creating a vector for time
% equation to find the charge on capacitor with time t
qt= q0*exp((-R.*t)/(2*L)).*cos(sqrt((1/(L*C))-(R/(2*L))^2).*t);
subplot(1,2,1) % left plot will be original
plot(t,qt) % creating a graph of charge vs time
% Part two of Problem 1
C= .0005; %redefining capacitance
% finding charge on capacitor with new value for C
qt= q0*exp((-R.*t)/(2*L)).*cos(sqrt((1/(L*C))-(R/(2*L))^2).*t);
subplot(1,2,2) % right plot will be with C=.0005
plot(t,qt) % creating a graph of charge vs time

%% Problem 2
clear
clc
close all
% creating a matrix with all data points
datamat= [10 3.4; 20 2.6; 30 1.6; 40 1.3; 50 1.0; 60 0.5];
t= datamat(:,1); % pulling out the time data from the matrix
c= datamat(:,2); % pulling out the concentration of Br(aq) data
ct= 4.84*exp(-0.034.*t); % function describing the data points
hold on % plotting the two graphs together
plot(t,ct) % line function for the equation
scatter(t,c) % scatter plot for the data set
hold off


