function F = FastFT(f)
% Usage: F = FastFT(f)
% Compute the discrete Fourier transform F
% of the complex column vector f using the
% fast Fourier transform method.  F is a
% column vector containing the computed
% complex DFT.

n = length(f);
t = n;
while 1
	if t == 1
		break;
	elseif mod(t,2) == 0
		t = t/2;
	else
		error('Not a power of two');
	end
end

k = zeros(n,1);

if n ~= 1
	h = n/2;
	gv = zeros(h,1);
	hv = zeros(h,1);
	for p = 1:h
		gv(p) = f(p) + f(p+h);
		hv(p) = (f(p) - f(p+h))*exp(j*2*pi*(1-p)/n);
	end
%disp('here is gv')
%disp(gv)
%disp('here is h')
%disp(hv)
	a = FastFT(gv);
	b = FastFT(hv);
%disp('here is a')
%disp(a)
%disp('here is b')
%disp(b)
	aa = 1;
	bb = 1;
	for q = 1:n
		if mod(q,2) == 1
			k(q) = a(aa)/2;
			aa = aa + 1;
		else
			k(q) = b(bb)/2;
			bb = bb + 1;
		end
	end
else
	k = f;
end
		
F = k;
