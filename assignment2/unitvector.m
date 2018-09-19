% This script prompts the user to assign x, y, and z values
% and calculate the unit vector based on those values

% Prompts the user to assign the x value
x = input('Enter a value for x: ')
% Prompts the user to assign the y value
y = input('Enter a value for y: ')
% Prompts the user to assign the z value
z = input('Enter a value for z: ')
% Calculate the unit vector
u = (x/sqrt((x^2) + (y^2) + (z^2))) + (y/sqrt((x^2) + (y^2) + (z^2))) + (z/sqrt((x^2) + (y^2) + (z^2)))