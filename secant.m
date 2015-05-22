function root = secant(f, x0, x1, t)
% Usage:  secant(f, x0, x1, t)
% This method uses the secant method to
% find roots of f using initial estimates
% x0 and x1.

a = x1;
b = x0;
disp(a)

while abs(a-b) >= t,
	if f(a)-f(b) == 0
		disp('ERROR: cannot divide by zero')
	end
	temp = a;
	a = a-f(a)*(a-b)/(f(a)-f(b))
        b = temp;
	disp(a)
end

root = a;
