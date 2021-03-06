function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

z =X*theta;
h = sigmoid(z);
p = round(h);

theta(1) =0;
tc = y.*h + (1-y).*(1-h);
tc = -log(tc);
J = ( sum(tc) + (lambda/2)*sum(theta.^2))/m;



diff = h-y;
grad = ((X'*diff) +  lambda*theta)/m;



% =============================================================

end
