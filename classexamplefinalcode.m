% 2017 Sprint EE 380
% Project 2
% Aaron Turner
% #011502541

% Final Code, In class example. Linear Correlation

%
% Water (g) | 83.93 | 80.76 | 87.66 | 85.20 | 72.85 | 84.61 | 83.81
% Carbs (g) | 15.25 | 16.55 | 11.60 | 13.01 | 24.27 | 14.13 | 15.11

function classexamplefinalcode
     % water matrix
    w = [83.93 80.76 87.66 85.20 72.85 84.61 83.81];
    
    % Carbs matrix
    c = [15.25 16.55 11.60 13.01 24.27 14.13 15.11]
    
    % Use corr2
    % Can't use coff2, as the professor didnt know. Squaring manually
    % csquare = c.*c
    % wsquare = w.*w
    % wc = w.*c
    % The numerator of r, 7 is the number of items
    % n = 7*sum(wc) - sum(w)*sum(c)
    % d = sqrt((7*sum(csquare) - sum(c)^2)(7*sum(wsquare) - sum(w)^2));
    
    % Actually, can use corr2.
    r = corr2(c, w)
    
    tv = r * sqrt((7 - 2) / (1 - r^2))
    
    % Plot our matricies
    scatter(c,w)
    
    % Plot our regression
    plotregression(c,w)
    
end

