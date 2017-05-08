% 2017 Spring EE 380 Section 6
% Project 5
% Aaron Turner
% #011502541
% ---------------------------------------------------------------------
% _____________________________________________________________________
% For 100 fair coins, all tossed at the same time, what is the probability
% 50 of them are heads?
% 100C50 (.5)^50 * (.5)^50
function project5 (trialstorun)

format long % This will increase the expressed precision

% --------------------------------------------------------------------
% Problem Statement
% --------------------------------------------------------------------

display(' ');
display('Problem: ');
display('For 100 fair coins, all tossed at the same time, what is the probability 50 of them are heads?');
display(' ');

% --------------------------------------------------------------------
% Theory/Practice problem
% --------------------------------------------------------------------

display(' ');
display('-----------------------------------------------------------');
display('Theory/Practice problem');
display('-----------------------------------------------------------');
display(' ');

% Find Our combination
combination = nchoosek(100, 50);
% Multiply by our probabilities
answer = combination * (0.5)^50 * (0.5)^50;

display('100C50 (.5)^50 * (.5)^50');
display('The answer is:');
answer


% --------------------------------------------------------------------
% Simulation problem
% --------------------------------------------------------------------

display(' ');
display('-----------------------------------------------------------');
display('Simulation problem');
display('-----------------------------------------------------------');
display(' ');

% Trials to run passed in as input argument, for publishing
%trialstorun = input('Enter number of experiements ');

results = zeros(trialstorun, 1);

for x = 0:trialstorun
    numFlips = 100; % Number of coin flips per experiement
    heads = sum(round(rand(numFlips, 1)));
    
    if heads == 50
        results (x, 1) = 1;
    end
end

probability = sum(results) / trialstorun;

display('Number of experiements run:');
trialstorun
display('Probability of exaclty 50 heads after the input number of experiements:');
probability

