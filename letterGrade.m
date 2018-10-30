function [mean,letterGrade] = letterGrade(a,b,c)
%function that takes 3 grades and returns the average 
%and appropriate letter grade.

    average = (a+b+c)/3
    
    if (average >= 90)
        letter = 'A';
    elseif (average >= 80 && average < 90);
        letter = 'B';
    else 
        letter = 'F'
    end
   
end

