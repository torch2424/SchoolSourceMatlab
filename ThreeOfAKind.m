function ThreeOfAKind

% model the deck
deck = {'AH'; '2H'; '3H'; '4H'; '5H'; '6H'; '7H'; '8H'; '9H'; '10H'; 'JH'; 'QH'; 'KH'; ...
       'AS'; '2S'; '3S'; '4S'; '5S'; '6S'; '7S'; '8S'; '9S'; '10S'; 'JS'; 'QS'; 'KS'; ...
       'AD'; '2D'; '3D'; '4D'; '5D'; '6D'; '7D'; '8D'; '9D'; '10D'; 'JD'; 'QD'; 'KD'; ...
       'AC'; '2C'; '3C'; '4C'; '5C'; '6C'; '7C'; '8C'; '9C'; '10C'; 'JC'; 'QC'; 'KC'};

% number of hands to try
prompt = 'How many hands would you like to draw?\n';
hands = input(prompt);

% number of success threeofkind hands
threeOfKindHands = 0;

% loop to obtain multiple hands
for i = 1:hands

    % get an array of indexes from the deck
    index = randperm(52);

    % get hand
    hand = deck(index(1:5), :);

    % sort our hand
    sortedHand = sort(hand);
    
    % check if we got a three of kind,
    % 3 are the same, and the other two are not
    
    % 1-3 same, 4 and 5 different
    if (strcmp(sortedHand{1}(1:1), sortedHand{3}(1:1)) == 1)
        if (strcmp(sortedHand{4}(1:1), sortedHand{5}(1:1)) ~= 1)
            threeOfKindHands = threeOfKindHands + 1;
        end
    end
    
    % 2-4 same, 1 and 5 different
    if (strcmp(sortedHand{2}(1:1), sortedHand{4}(1:1)) == 1)
        if (strcmp(sortedHand{1}(1:1), sortedHand{5}(1:1)) ~= 1)
            threeOfKindHands = threeOfKindHands + 1;
        end
    end
    
    % 3-5 same, 1 and 2 different
    if (strcmp(sortedHand{3}(1:1), sortedHand{5}(1:1)) == 1)
        if (strcmp(sortedHand{1}(1:1), sortedHand{2}(1:1)) ~= 1)
            threeOfKindHands = threeOfKindHands + 1;
        end
    end
end

% find probability, and print to user
probability = threeOfKindHands / hands;
fprintf('The probability of a three of a kind hand using this simulation is: %d\n', probability)
end


