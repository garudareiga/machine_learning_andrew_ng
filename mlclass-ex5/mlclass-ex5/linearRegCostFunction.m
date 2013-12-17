function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%


% Ray 12/07/2013
h = X*theta;

% Cost function
J = (0.5/m).*sum((h - y) .^ 2) + (lambda*0.5/m).*sum(theta(2:end, :) .^ 2);

% Gradient
grad = (1/m).*X'*(h - y);

% Regularization
grad(2:end) = grad(2:end) + (lambda/m)*theta(2:end);

% =========================================================================

grad = grad(:);

end
