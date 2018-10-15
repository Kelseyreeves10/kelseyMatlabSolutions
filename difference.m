function [result] = difference(a,b)
%function that takes two numbers as inputs and then substracts
%the smaller number from the larger number
%a and b are numbers
%result = difference between a and b

%By: Kelsey Reeves, Tested 9/27/2018 using Matlab v R2017b

    if (a > b)
        result = a-b;
    else
        result = b-a;
    end

end

