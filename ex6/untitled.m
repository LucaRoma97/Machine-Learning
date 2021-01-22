
%C = 1;
%sigma = 0.3;
C = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
sigma = C;
% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%
x3 = Xval(1:3,1)';
x4 = Xval(1:3,2)';
for i=1:length(C)
    for j=1:length(sigma)
        model = svmTrain(X, y, C(i), @(x3, x4)gaussianKernel(x3, x4, simga(j)));
        predictions(i,j) = svmPredict(model, Xval);
        mean(i,j) = mean(double(predictions(i,j) ~= yval));
    end
end
mean(double(predictions ~= yval))