close all
clear all
clc


X = [ones(10,1) sin(1:1.5:15)' cos(1:1.5:15)'];
X = X(2,:)';
p=9;
[m,n] = size(X);
% You need to return the following variables correctly.
X_poly1 = zeros(numel(X), p);
X_poly = zeros(numel(X), p);
% ====================== YOUR CODE HERE ======================
% Instructions: Given a vector X, return a matrix X_poly where the p-th 
%               column of X contains the values of X to the p-th power.
%
% 



X_poly1 = [X.^[1:p]];



