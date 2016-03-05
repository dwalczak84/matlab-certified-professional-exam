%% Simulate the sum of rolling 6 dice 1e6 times.
tic;
numSims = 1e6;

% IMPROVEMENT 1: 
% Take randi() out of the for loop and generate 1e6 times  in one call.
% Store the result in one matrix 'dice'.
dice = randi([1 6], numSims, 6);

% IMPROVEMENT 2:
% take sum out of the for loop and sum dice rolling result across second
% dimenstion of the previously calculated matrix 'dice'.
diceSum = sum(dice, 2);

% for i = 1:numSims
    
    % Create 6 random integers in the range [1, 6]
%     dice = randi([1, 6], 1, 6);
        
    % Sum the six integers and store the result
%     diceSum(i) = sum(dice);
% end


hist(diceSum);
toc % script running now is approximetly 24-times faster !
