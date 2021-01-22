load('ex3data1.mat');

num_labels = 10; % 10 labels, from 1 to 10 
lambda = 0.1;

m = size(X, 1);
n = size(X, 2);

% You need to return the following variables correctly 
all_theta = zeros(num_labels, n + 1);

% Add ones to the X data matrix
X = [ones(m, 1) X];

initial_theta = zeros(n+1,1);

options = optimset('GradObj', 'on', 'MaxIter', 50);

for c=1:num_labels
    all_theta(c,:) = fmincg (@(t)(lrCostFunction(t, X, (y == c), lambda)), initial_theta, options);
end
