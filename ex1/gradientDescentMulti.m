function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
%data = load('ex1data2.txt'); 
%X = data(:, 1:2); y = data(:, 3);

%num_iters = 150;

[m,n] = size(X); 
%theta = ones(n+1,1);
%alpha = 0.0000001;

J_history = zeros(num_iters, 1);

%X = [ones(m,1) X];


for iter = 1:num_iters
    J_history(iter) = ((X*theta - y)')*(X*theta - y)/(2*m);
    theta = theta - alpha/m*((X*theta - y)'*X)';
end
%theta1 = pinv(X'*X)*X'*y
%return [theta, J_history];
%figure()
%plot([1:num_iters], J_history,'r')

end
