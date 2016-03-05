% Problem 2:
% The provided data file ( viewdata.mat ) contains a 19-by-3 matrix 
% viewdata with the following columns:
% 
% 1. Video Length - Length in minutes for the video
% 2. Views - Number of times the video has been viewed
% 3. Minutes Watched - Total amount of time viewers spent watching the 
% video
% 
% Write a MATLAB script to analyze the data to determine the effect of 
% video length on viewer retention with the following steps:
% 
% Load the saved viewership data into the MATLAB workspace.
% Create the column vector viewPct containing the percentage viewed for 
% each variable according to the formula: Percentage 
% viewed = (Minutes watched / Views) / (Video length).
% Create vectors containing the percentage viewed for short 
% (Video length < 1.5), medium (1.5 <= Video length <= 2.25), and long 
% (Video length > 2.25) videos).
%
% Calculate the average of the values contained in the vectors from the 
% previous step, and store the results in the variables shortPct , medPct , 
% and longPct respectively.

% Load the saved viewership data into the MATLAB workspace:
load viewdata

% Create the column vector viewPct containing the percentage viewed for 
% each variable according to the formula: Percentage 
% viewed = (Minutes watched / Views) / (Video length):
viewPct = (viewdata(:, 3) ./ viewdata(:, 2)) ./ viewdata(:, 1);

% Create vectors containing the percentage viewed for short 
% (Video length < 1.5), medium (1.5 <= Video length <= 2.25), and long 
% (Video length > 2.25) videos).
short = viewdata(:, 1) < 1.5;
viewPctShort = viewPct(short, :);

medium = (viewdata(:, 1) >= 1.5 & viewdata(:, 1) <= 2.25);
viewPctMedium = viewPct(medium, :);

long = viewdata(:, 1) > 2.25;
viewPctLong = viewPct(long, :);

% Calculate the average of the values contained in the vectors from the 
% previous step, and store the results in the variables shortPct , medPct ,
% and longPct respectively.
shortPct = mean(viewPctShort);
medPct = mean(viewPctMedium);
longPct = mean(viewPctLong);
