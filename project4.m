% 2017 Spring EE 380 Section 6
% Project 4
% Aaron Turner
% #011502541
% Hypothesis Testing
% --------------------------------------------
% ____________________________________________
% Below is the code for a binomial distribution wit n = 18, p = 0.5,
% it will produce a plot of the distribution
function project4

    format long % This will increase the expressed precision

    % Arry for prob
    prob = [];

    % Sample Size, Number of trials
    n = 18;
    
    % Probability of success
    p = 0.5;
    
    % Trials to run
    for x = 0:18
        % Get our binomail PDF
        % binopdf (x,n,p)
        prob(x + 1) = binopdf(x, n, p);   
    end
    
    % Print the values
    prob
    
    % Build Our Graph
    figure(1);
    bar(prob);
    
    % --------------------------------------------
    % ____________________________________________
    % 
    % Below we have the code for experimentally determining
    % The Critical Value
    
    
    
end

