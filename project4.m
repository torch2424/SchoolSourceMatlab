% 2017 Spring EE 380 Section 6
% Project 4
% Aaron Turner
% #011502541
% Hypothesis Testing
% ---------------------------------------------------------------------
% _____________________________________________________________________
% Below is the code for a binomial distribution with n = 18, p = 0.5,
% it will produce a plot of the distribution
function project4

    format long % This will increase the expressed precision

    % Empty Vector
    prob = [];

    % Sample Size, Number of trials
    n = 18;
    
    % Probability of success
    p = 0.5;
    
    % Trials to run
    for x = 0:18
        % Get our binomial PDF
        % binopdf (x,n,p)
        prob(x + 1) = binopdf(x, n, p);   
    end
    
    % Print the values
    prob
    
    % Build Our Graph
    figure(1);
    bar(prob);
    xlabel('Number of trials');
    ylabel('probability');
    title('Binomial with p = 0.5');
    
    % ---------------------------------------------------------------------
    % _____________________________________________________________________
    % 
    % Below we have the code for experimentally determining
    % The Critical Value
    % P = ({X >= c.v}|{P = 1/2}) =
    % Summation of X=11 to 18 18Cx * (1/2)^x * (1 - 1/2)^(18-x)
    % The value of n = 18 and p = 0.5
    % There are two count controller loops.
    % One nested within the other
    
    % Empty vector for the potential critical value
    cvp = [];
    
    for i = 0:18
        prob = []; % Reinitialize the vector.
        for x = i:18
            prob(x + 1) = binopdf(x,n,p);
        end
        
        % Sum is a MATLAB function
        probability = sum(prob);
        cvp(i + 1) = probability;
    end
    
    cvp % These are the potential critical values
    display ('We can see from the output that x >= 13 with a probability of ');
    display(cvp(14))
    display('is the correct choice');
    
    % ---------------------------------------------------------------------
    % _____________________________________________________________________
    % 
    % Below is a sepcifc instance of the binomial with p = 0.9
    % Empty Vector
    prob = [];

    % Sample Size, Number of trials
    n = 18;
    
    % Probability of success
    p = 0.9;
    
    % Trials to run
    for x = 0:18
        % Get our binomial PDF
        % binopdf (x,n,p)
        prob(x + 1) = binopdf(x, n, p);   
    end
    
    % Print the values
    prob
    
    % Build Our Graph
    figure(2);
    bar(prob);
    xlabel('Number of trials');
    ylabel('probability');
    title('Binomial with p = 0.9');
    
    % ---------------------------------------------------------------------
    % _____________________________________________________________________
    % 
    % Below is the code for determining the type II or beta error.
    % The probability of accepting the null hypothesis when it is false.
    
    % Empty vector for beta probabilities.
    beta = [];
    
    % as before, n is 18
    
    % Empty Vector
    prob = [];
    
    % outer loop
    for i = 1:11
        p = [0.50, 0.55, 0.60, 0.65, 0.70, 0.75, 0.80, 0.85, 0.90, 0.95, 1.00];
        % inner loop
        for x = 0:12
            prob(x + 1) = binopdf(x,n,p(i));
        end
        
        beta(i) = 1 - sum(prob);
    end
    
    % Build Our Graph
    figure(3);
    plot(beta);
    xlabel('Probabilities of surperior system.');
    ylabel('1 - beta probabilities');
    title('Power of the test.');
end

