% Kelsey Reeves
% Assignment 4: Analyzing Isometric Strength Data
% October 30, 2018

% This script analyzes isometric strength data imported from a text file as
% column vectors.
% This is our import function.
[SubjectID,Age,Gender,Weight,Day1,Day2,Day3] = importfile('isok_data_6803.csv', 2, 26)

% This function returns the male and female individual mean isometric 
% strength values across all three days. The second set of outputs returns
% a single mean value for each group.
[maleIsoIndMeans,femaleIsoIndMeans,maleGroupIsoMeans,femaleGroupIsoMeans] = genderIsoCalc(Gender,Day1,Day2,Day3)

% This function returns the subject IDs who had an increase from day 1 to
% day 2 and from day 2 to day 3.
[day1toDay2] = dayComparator(SubjectID,Day1,Day2)
[day2toDay3] = dayComparator(SubjectID,Day2,Day3)

% Isokinetic strength data is normalized to body weight and the group means
% for each day are calculated.
normDay1mean = mean(Day1./Weight)
normDay2mean = mean(Day2./Weight)
normDay3mean = mean(Day3./Weight)

% Makes all variables the same size in order to create a table
maleGroupIsoMeans((2:13),1) = NaN
femaleIsoIndMeans(13,1) = NaN
femaleGroupIsoMeans((2:13),1) = NaN
day1toDay2(13,1) = NaN
day2toDay3((12:13),1) = NaN
normDay1mean((2:13),1) = NaN
normDay2mean((2:13),1) = NaN
normDay3mean((2:13),1) = NaN

T = table(maleIsoIndMeans,maleGroupIsoMeans,femaleIsoIndMeans,femaleGroupIsoMeans,day1toDay2,day2toDay3,normDay1mean,normDay2mean,normDay3mean)

filename = 'iso_results.csv'
writetable(T,'iso_results.csv')

