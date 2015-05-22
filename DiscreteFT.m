function F = DiscreteFT(f)
% Usage: F = DiscreteFT(f)
% Compute the discrete Fourier transform F
% of the complex vector f using the direct
% formula.  F is the computed complex DFT.

n = length(f);
x = zeros(n,1);
for p = 0:n-1
	for q = 0:n-1
		x(p+1) = x(p+1) + f(q+1)*exp(-j*2*pi*p*q/n);
	end
end

for r = 1:n
	x(r) = x(r)/n;
end

F = x;
