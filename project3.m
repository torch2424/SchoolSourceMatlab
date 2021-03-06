% 2017 Spring EE 380
% Project 3
% Aaron Turner
% #011502541
% This function simulates 
% the density function of theta, 
% and the uniform density function of the range determined from theta
% Deterministic Range Formula: R = V^2 / g sin(2[theta]).
% This represents projectile motion, where the initial angle
% for a projectile is between 0 and 90 degrees.
% Initial velocity is 10 meters per second
% -------------------------------------------------
function project3
% the uniform density funciton for the initial angle
% Introduce the program to the user
display('This program will simulate projectile motion');
display('Generating graph...');

% Our limits
lowerBound = 0; % Zero Degrees, aligned with ground
upperBound = pi / 2; % 90 degress pointing upwards

% ------------------------------------------
% The constant acceleration due to gravity
g = 9.8; % meters per second squared
% The initial muzzle velocity is about 10meters per second.
v = 10; % Meters per second

% -----------------------------------------
% Number of random numbers between the lower and upper bounds
N = 1e5;
% The random numbers over the support
% Uncomment this d = line, and comment the other d = line to get the
% initial angle
% d = (lowerBound - upperBound) * rand(1, N) + upperBound;
theta = (lowerBound - upperBound) * rand(1, N) + upperBound;
% plug for R of theta into d.
d = 2 * ((v^2)/g) * sin(theta) .* cos(theta);
% The partition between upper and lower bounds
partition = 1e3;
% ------------------------------------------

% Find our partitions and R.V
delta = (max(d) - min(d)) / partition;
r = min(d):delta:max(d);

% The first index is the number of repititions at the location
[i, h] = hist(d,r);
probabilityDensityFunction = i / N / delta;

% Display the results
bar(h, probabilityDensityFunction);


end

