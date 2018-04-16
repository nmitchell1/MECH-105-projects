function nd = days(mo, da, leap)
% days This function is used to calculate the elapsed days in a year
% Inputs:
%   mo= month (1-12, 1= January... 12= December)
%   da= the day of the year (1-31)
%   Leap= is it a leap year? (1= yes, 0= no)
%
% Outputs:
%   nd= number of days elapsed

nd= 0; %setting number of days to 0
mp= [0,0,0,0,0,0,0,0,0,0,0,0]; %creating a matrix to contain number of days each month
nd= nd+da; %adding amount of days to total
for i=1:(mo-1) %fills matrix with amount of days of each month passed
    if i== 4 || i== 6 || i== 9 || i== 11 %months with 30 days
        mp(i)= 30;
    elseif i== 2 %months with 28 days (leap year added on later)
        mp(i)= 28;
    else
        mp(i)= 31; %months with 31 days
    end
end
md= sum(mp); %adds up each day of the month
nd= md+nd; %adds the sum of days from months

if leap== 1 && mo>2 %adds one day if leap year and past February 
    nd=nd+1;
end

end

