% Problem 4:
% Create an anonymous function f which accepts a (possibly vector valued) 
% numeric input and returns a (possibly vector valued) numeric output 
% according to the mathematical formula f(x) = x^2 - sin(x). Use this 
% function along with the fminsearch function to find the local minimum
% value near the initial value near x0 = 0.5. Store the local minimizing 
% value and the corresponding function value in the variables xmin and ymin
% respectively.

function y = problem4(x)

f = @(x) x.^2 - sin(x);
[xmin ymin] = fminsearch(f, 0.5);
y = [xmin ymin];

end
