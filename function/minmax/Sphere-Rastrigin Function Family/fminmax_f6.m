function f = fminmax_f6(x, y)
% Sphere-rastrigin function (Type 2)
% Global optimum value: f(0.1, 0.1) = 0
%
% Property
% * xy-correlation: Yes
shift = 0.1;
if nargin == 0
	f = shift;
	return;
end

x = x - shift;
y = y - shift;
X = x;
Y = x + y;
a = 1;
b = -1;
f = a * sphere(X) + b * rastrigin(Y);
end
