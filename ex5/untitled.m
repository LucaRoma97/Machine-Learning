clear all
close all
clc

X = [ones(10,1) sin(1:1.5:15)' cos(1:1.5:15)'];
y = sin(1:3:30)';
Xval = [ones(10,1) sin(0:1.5:14)' cos(0:1.5:14)'];
yval = sin(1:10)';
%theta = [0.1 0.2 0.3]';
%lambda = 0.5;
m = length(y); % number of training examples
%n = length(theta);
% You need to return the following variables correctly 
% Selected values of lambda (you should not change this)
lambda_vec = [0 0.001 0.003 0.01 0.03 0.1 0.3 1 3 10]';

% You need to return these variables correctly.
error_train = zeros(length(lambda_vec), 1);
error_val = zeros(length(lambda_vec), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return training errors in 
%               error_train and the validation errors in error_val. The 
%               vector lambda_vec contains the different lambda parameters 
%               to use for each calculation of the errors, i.e, 
%               error_train(i), and error_val(i) should give 
%               you the errors obtained after training with 
%               lambda = lambda_vec(i)
%
% Note: You can loop over lambda_vec with the following:
%
%       for i = 1:length(lambda_vec)
%           lambda = lambda_vec(i);
%           % Compute train / val errors when training linear 
%           % regression with regularization parameter lambda
%           % You should store the result in error_train(i)
%           % and error_val(i)
%           ....
%           
%       end
%
%

for i = 1:length(lambda_vec)
    theta = trainLinearReg(X, y,lambda_vec(i));
    error_train(i) = linearRegCostFunction(X, y, theta , lambda_vec(i));
    error_val(i) = linearRegCostFunction(Xval, yval, theta , lambda_vec(i));
end
