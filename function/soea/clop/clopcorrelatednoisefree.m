function f = clopcorrelatednoisefree(x)
%CLOPCORRELATEDNOISEFREE A test function with CORRELATED definition in CLOP
%paper
% The function values are defined as f(x) = 1 / (1 + exp(-r(x))), where
% r(x) is defined as 0.2(g(10(x1+x2+0.1))+g(x1-x2+0.9))+0.2, where
% g(x)=-x^4+x^3-x^2. 
%
% Note that the CLOP paper defines the test function for maximization. In
% this project, clopangle defines an invert version of the test function
% for minimization.
%
% Minimizer: [-0.5; 0.4]
% Minimum function value: 4.501660026875221e-01
z1 = 10 * (x(1) + x(2) + 0.1);
z2 = x(1) - x(2) + 0.9;
g1 = -z1^4 + z1^3 - z1^2;
g2 = -z2^4 + z2^3 - z2^2;
r = 0.2 * (g1 + g2) + 0.2;
f = 1 - 1 / (1 + exp(-r));
end
