% 2017 Sprint EE 380
% Homework CR
% Aaron Turner
% #011502541

% MATLAB Correlation Regression funciton
function homeworkcr

% --------------------------------------------------------------------
% Fire problem
% --------------------------------------------------------------------

% Define our data
numFiresX = [72 69 58 47 84 62 57 45];
numAcresBurnedY = [62 42 19 26 51 15 30 15];

% Find our sample size
n = 8;
% Degrees of freedom is n - 2 (Because of two variables)
df = n - 2;

% Create a scatter plot
figure(1);
scatter(numFiresX, numAcresBurnedY);

% Find our correlation coeffecient
r = corr2(numFiresX, numAcresBurnedY);
% Find our TV (Test value)    
tv = r * sqrt((df) / (1 - r^2));

% --------------------------------------------------------------------
% Alumni Problem
% --------------------------------------------------------------------

% Define our variables
yearsX = [1 5 3 10 7 6];
contributionsY = [500 100 300 50 75 80];

% Find our sample size
n = 6;
% Degrees of freedom is n - 2 (Because of two variables)
df = n - 2;

% Create a scatter plot
figure(2);
scatter(yearsX, contributionsY);

% Find our correlation coeffecient
r = corr2(yearsX, contributionsY);
% Find our TV (Test value)    
tv = r * sqrt((df) / (1 - r^2));

end

