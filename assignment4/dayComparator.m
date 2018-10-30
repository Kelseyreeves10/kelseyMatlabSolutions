function [dayAtoDayB] = dayComparator(SubjectID,DayA,DayB)
% Compares strength values from day 1 to day 2, and from day 2 to day 3.
    
    % Finds the difference between two days
    dayAtoDayB = DayB - DayA;
    % Finds and determines if there is an increase from the previous day
    increase = find(dayAtoDayB > 0);
    % Displays the subject IDs who had an increase
    dayAtoDayB = SubjectID(increase);
    
end

