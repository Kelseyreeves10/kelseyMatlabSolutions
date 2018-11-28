function [day] = timeConverter(years,units)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

    
    if nargin == 1
        units = ' days';
        day = (365*years);
        num2str(day);
        s1 = (num2str(day));
        day = strcat(s1,units);
    elseif nargin == 2 && strcmp(units,'seconds')
        day = 365*years*24*60*60;
        num2str(day);
        s1 = (num2str(day));
        s2 = ' seconds';
        day = strcat(s1,s2);
    elseif nargin == 2 && strcmp(units,'minutes')
        day = 365*years*24*60;
        num2str(day);
        s1 = (num2str(day));
        s2 = ' minutes';
        day = strcat(s1,s2);
    end
    
    

end

