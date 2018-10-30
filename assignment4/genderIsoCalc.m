function [maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMeans,femaleGroupIsoMeans] = genderIsoCalc(Gender,Day1,Day2,Day3)
% Gender Stats
%   The first two outputs return the male and female individual mean isometric 
%   strength values across all three days. The second two outputs return
%   a single mean value for each group.

    % Assigns the variable male to all subjects who are male
    male = Gender == 'M';
    % Finds the location, or the subject IDs of each male
    findmale = find(male);
    % Calculates the individual means of each male subject across all 
    % three days
    maleIsoIndMeans = (Day1(findmale) + Day2(findmale) + Day3(findmale))/3;
    % Calculates the mean of the male subject means
    maleGroupIsoMeans = mean(maleIsoIndMeans);
    % Assigns the variable female to all subjects who are female
    female = Gender == 'F';
    % Finds the location, or the subject IDs of each female
    findfemale = find(female);
    % Calculates the individual means of each female subject across all
    % three days
    femaleIsoIndMeans = (Day1(findfemale) + Day2(findfemale) + Day3(findfemale))/3;
    % Calculates the mean of the female subject means
    femaleGroupIsoMeans = mean(femaleIsoIndMeans);
     
end

