% Problem 3:
% The provided data file ( TData.mat ) contains temperature data reported 
% by weather stations instance in time. The contents of the data file are:
% 
% 1. The x-coordinates of the weather station locations (in km) stored in 
% the column vector x
% 2. The y-coordinates of the weather station locations (in km) stored in 
% the column vector y
% 3. The temperature data corresponding to the station locations (in 
% degrees C) stored in the column vector T
% 
% Write a MATLAB script to load the data from the file and produce a 
% contour plot similar to the one below with the temperature stations. 
% Use the griddata function with 'v4' as the interpolation method to 
% estimate the temperatures for the x-y spatial grid points.

% load data from the file:
load TData

% interpolate data:
xlin = 1:674;
ylin = 1:349;
[xg yg] = meshgrid(xlin, ylin);

% span of contours:
ctr_span = -5:5;

% generate estimation matrix vg for x and y with an interpolation method 
% 'v4':
vq = griddata(x, y, T, xg, yg, 'v4');

% produce a contour plot:
[C, h] = contour(vq, ctr_span);

% correct axes:
axis([0 675 0 350]);

% add labels for contours:
clabel(C, h, ctr_span);

% add markers for weather stations location:
hold on;
plot(x, y, 'o');
