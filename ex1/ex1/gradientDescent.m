function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

%data = load('ex1data1.txt'); 
%X = data(:, 1); y = data(:, 2);

%num_iters = 1500;

n=1;
%theta = ones(n+1,1);
m = length(y); 
J_history = zeros(num_iters, 1);

%X = [ones(m,1) X];


for iter = 1:num_iters
    J_history(iter) = ((X*theta - y)')*(X*theta - y)/(2*m);
    theta = theta - alpha/m*((X*theta - y)'*X)';
end
     

end
