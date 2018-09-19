% This script prompts the user to convert flow rate
% from cubic meters per second to cubic feet per second

% Prompts the user to enter the flow in cubic meters per
% second and convert that value to cubic feet per second
flowCubicMeters = input('Enter the flow in m^3/s: ')
flowCubicFeet = flowCubicMeters/0.028

% Print all variables in a sentence format
fprintf('A flow rate of %5.3f meters per sec,\n', flowCubicMeters)
fprintf('is equivalent to %6.3f feet per sec\n',flowCubicFeet)
