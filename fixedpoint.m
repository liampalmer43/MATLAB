function root = fixedpoint(g, x0, t)
% Usage:  fixedpoint(g, x0, t)
% This method uses fixed point iteration to
% find fixed points of g with tolerance t
% using initial estimate x0.

a = g(x0);
b = x0;
%disp(a)

while abs(a-b) >= t,
	b = a;
	a = g(a);
	%disp(a)
end

root = a;
