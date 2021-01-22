close all 
clear all 
clc
%y = [460;232;315;178];
%X = [1 2104 5 1 45; 1 1416 3 2 40; 1 1534 3 2 30; 1 852 2 1 36]
data = load('ex1data1.txt'); % read comma separated data
X = data(:, 1); y = data(:, 2);
%num_iters = 100;
n=1;
m = length(y); % number of training examples
theta = ones(n+1,1);
% You need to return the following variables correctly 
J = 0;
%X*theta
alpha = 0.022;
%return

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.


X = [ones(m,1) X];
%J = ((X*theta - y)')*(X*theta - y)/(2*m)
num_iters = 1500;
J_history = zeros(num_iters, 1);
%J_history(1) = J;

for iter = 1:num_iters
    J_history(iter) = ((X*theta - y)')*(X*theta - y)/(2*m);
    theta = theta - alpha/m*((X*theta - y)'*X)';
end

theta1 = pinv(X'*X)*X'*y;
figure()
plot([1:num_iters], J_history,'r')
