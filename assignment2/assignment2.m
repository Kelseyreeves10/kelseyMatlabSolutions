% Kelsey Reeves
% Due date: September 13, 2018
% This file contains the solutions to assignment 2 which are 
% exercises from chapters 1-3 in the textbook.

%% Chapter 1 Exercises

% 1.)

cuAtomicWeight = 63.55

cuAtomicWeight =

   63.5500

% 2.)

myage = 23;
myage = myage - 2;
myage = myage + 1

myage =

    22

% 3.)

namelengthmax

ans =

    63

% 4.)

weightPounds = 10

weightPounds =

    10
    
weightOunces = 160

weightOunces =

   160
   
who

Your variables are:

weightOunces  weightPounds

whos
  Name              Size            Bytes  Class     Attributes

  weightOunces      1x1                 8  double              
  weightPounds      1x1                 8  double

% 5.)

intmin('uint32')

ans =

  uint32

   0
   
intmax('uint32')

ans =

  uint32

   4294967295
   
intmin('uint64')

ans =

  uint64

   0
   
intmax('uint64')

ans =

  uint64

   18446744073709551615

% 6.)

dec = 10.1;
deci = int32(dec);
 whos
  Name      Size            Bytes  Class     Attributes

  dec       1x1                 8  double              
  deci      1x1                 4  int32     

% 11.)

pounds = 100;
kilos = pounds/2.2

kilos =

   45.4545

% 12.)

ftemp = 65;
ctemp = (ftemp - 32) * (5/9)

ctemp =

   18.3333

% 13.)

inches = 72;
meters = (inches * 2.54)/100

meters =

    1.8288

% 14.)

sind(90);
sin = sind(90)

sin =

     1
     
% 15.)

r1 = 10;
r2 = 20;
r3 = 30;
rt = 1/((1/r1) + (1/r2) + (1/r3))

rt =

    5.4545

% 22.) Uppercase letters come first. Each character is assigned an 
% equivalent integer from 0 to 127. The function char converts the 
% integer to its assigned character. Therefore, because char(65) results
% in 'A' and char(97) results in 'a', uppercase letters come first.

char(65)
ans =

    'A'
    
char(97)

ans =

    'a'

% 24.)

'b' >= 'c' - 1

ans =

  logical

   1
   
3 == 2 + 1

ans =

  logical

   1
   
(3 == 2) + 1

ans =

     1
     
xor(5 < 6, 8 > 4)

ans =

  logical

   0

% 25.)

x = 6;
y = 9;
(x > 5)||(y < 10)

ans =

  logical

   1
   
b = xor(x,y)

b =

  logical

   0


% 26.)

3*10^5 == 3e5

ans =

  logical

   1

% 27.)

log10(10000) == 4

ans =

  logical

   1

 %% Chapter 2 Exercises
 
 % 1.)
 
v = [2:7]

v = [1.1000:0.2000:1.7000]

v = [8:-2:2]
 
 % 2.)
 
vec = linspace(0,2*pi,50)
 
 % 3.)
 
ls = linspace(2,3,6)
 
 % 4.)
 
rv1 = linspace(-5,-1,5)
rv2 = linspace(5,9,3)
rv3 = linspace(8,4,3)
 
 % 6.)
 
rv = [-1:0.5:1];
cv = rv'
 
 % 7.)
 
vec = [1:9];
odd = vec(1:2:end)

odd =

     1     3     5     7     9
 
 % 8.)
 
mat = [7:10;12:-2:6];
mat(1,3)
mat(2,:)
mat(:,1:2)
 
 % 9.)
 
mat = [1:4;5:8];
[r, c] = size(mat)

r =

     2


c =

     4
     
numel(mat)

ans =

     8
     
r*c == 8

ans =

  logical

   1
 
 % 10.)
 
mat = [5:8;9:12]

mat =

     5     6     7     8
     9    10    11    12
     
mat(1,:) = 1:4

mat =

     1     2     3     4
     9    10    11    12
     
mat(:,3) = [9,13]'

mat =

     1     2     9     4
     9    10    13    12
 
 % 12.)
 
rows = randi([1, 5])

rows =

     4
     
cols = randi([1, 5])

cols =

     5
     
zeros(rows,cols)

ans =

     0     0     0     0     0
     0     0     0     0     0
     0     0     0     0     0
     0     0     0     0     0
 
 % 23.)
 
B = [3,5,7,9,11];
sum(B)

ans =

    35
 
 % 26.)
 
v1 = [3,5,7,9];
v2 = [1,2,3,4];
sum(v1 ./ v2)
 
 % 30.)
 
vec = randi([-10,10],1,5)

vec =

     7     9     4     5     5
     
vec - 3

ans =

     4     6     1     2     2
     
countPositive = (length(vec>0))

countPositive =

     5
     
abs(vec)

ans =

     7     9     4     5     5
     
max(vec)

ans =

     9
 
 % 31.)

mat = randi([1,15],3,5)

mat =

     8     3     8     4    12
     1    12     3    10     7
     6     5    10    11     2

max(mat)

ans =

     8    12    10    11    12
     
max(mat')

ans =

    12    12    11     
     
     
max(max(mat))

ans =

    12     
     
%% Chapter 3 Exercises

% 1.)

% This script calculates the volume of a hollow sphere

% The inner radius is assigned
ri = 4
% The outer radius is assigned
ro = 5
% The volume is calculated based on the inner and outer radii
vol = ((4*pi)/3)*((ro^3) - (ri^3))

ri =

     4


ro =

     5


vol =

  255.5162

% 4.)

mat = input('enter a matrix: ')
enter a matrix: [1:3;4:6]

mat =

     1     2     3
     4     5     6

% 6.)

fprintf('%f\n', 12345.6789)
12345.678900

fprintf('%10.4f\n', 12345.6789)
12345.6789

fprintf('%10.2f\n', 12345.6789)
  12345.68

fprintf('%6.4f\n', 12345.6789)
12345.6789

fprintf('%2.4f\n', 12345.6789)
12345.6789
  
% 8.)

% This script prompts the user to convert flow rate
% from cubic meters per second to cubic feet per second

% Prompts the user to enter the flow in cubic meters per
% second and convert that value to cubic feet per second
flowCubicMeters = input('Enter the flow in m^3/s: ')
flowCubicFeet = flowCubicMeters/0.028

% Print all variables in a sentence format
fprintf('A flow rate of %5.3f meters per sec,\n', flowCubicMeters)
fprintf('is equivalent to %6.3f feet per sec\n',flowCubicFeet)

% 13.)

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









 