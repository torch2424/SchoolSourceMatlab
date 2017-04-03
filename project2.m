% 2017 Sprint EE 380
% Project 2
% Aaron Turner
% #011502541

% This function simulates the continous probability densitry function
% for a uniform distribution
function project2

% Introduce the program to the user
display('This program will simulate a uniform density function');
display('Below you will be prompted to enter the lower and upper bounds');

% Grab our lower and upper bound
lowerBound = input('Enter the lower bound\n');
upperBound = input('\nEnter the upper bound\n');

% Number of random numbers between the lower and upper bounds
N = 10000;

%The random numbers over the support
d = (lowerBound - upperBound) * rand(1, N) + upperBound;

% The partition between upper and lower bounds
partition = 100;

% Find our partitions and R.V
delta = (max(d) - min(d)) / partition;
r = min(d):delta:max(d);

% The first index is the number of repititions at the location
[i, h] = hist(d,r);
probabilityDensityFunction = i / N / delta;

% Display the results
bar(h, probabilityDensityFunction);
