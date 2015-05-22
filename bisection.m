function root = bisection(f, a, b, t)
%Usage: bisection(f, a, b, t)
%This method uses bisection to find roots of
%f in the interval [a,b] with tolerance t.

if f(a)*f(b) > 0
	disp('ERROR: Need f(a)*f(b) <= 0')
	return		%checks for initial conditions
end

while abs(b-a) > t,
	c = (a+b)/2;
	disp(c)
	if f(a)*f(c) <= 0
		b = c;
	elseif f(a)*f(c) > 0
		a = c;
	end
end

root = (a+b)/2;
