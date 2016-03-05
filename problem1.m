% Problem 1:
% The provided text file ( readings.txt ) contains a timestamp broken up 
% into year, month, day, hour, minute, second, and timezone components, as 
% well as a reading from a sensor. Write a script that reads the data from 
% the file using the textscan function.
% 
% The script must:
% Convert the timestamps into single numeric serial date numbers stored in 
% a variable named dates Ignore the timezone component of the timestamp by 
% not reading it into the workspace
% Place numeric values for the readings in a single array of type double 
% with a variable name of readings

% file handle
fn = 'C:\83699_mcmp_practice_files\problem1\readings.txt';
FileID = fopen('readings.txt');

% Read data as a cell of strings and ignore EST column:
C = textscan(FileID, '%s %s %s %s %s %s %*s %s', 'HeaderLines', 1);

% Convert the timestamps into single numeric serial date numbers stored in 
% a variable named:
dates = datenum(str2double([C{1:6}]));

% Place numeric values for the readings in a single array of type double 
% with a variable name of readings:
readings = str2double(C{7});
