function root = newton(f, fprime, x0, t)
% Usage:  newton(f, fprime, x0, t)
% This method uses Newton’s method to
% find roots of f (with derivative fprime)
% with tolerance t using initial estimate x0.

if fprime(x0) == 0
	disp('ERROR: derivative is zero!')
	return
else
	a = x0-f(x0)/fprime(x0);
	b = x0;
	disp(a)
end

while abs(a-b) >= t,
	if fprime(a) == 0
		disp('ERROR: derivative is zero!')
		return
	end
	b = a;
	a = b-f(b)/fprime(b);
	disp(a)
end

root = a;
