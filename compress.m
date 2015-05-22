function [Y, drop] = compress(X, tol)
% Usage: [Y, drop] = compress(X, tol)
% Compute a compressed image ’Y’ from an
% original input image ’X’ by dropping
% Fourier modes with modulus smaller
% than tolerance parameter ’tol’.  The
% drop ratio is also returned via the
% parameter ’drop’.

d = 0;
s = size(X)

for j = 1:3
	for k = 1:s(1)/8
		for l = 1:s(2)/8
			subarray = X(k*8 - 7: k*8, l*8-7: l*8, j);
			subarray = fft2(single(subarray));
			for u = 1:8
				for v = 1:8
					if abs(subarray(u,v)) < tol
						subarray(u,v) = 0;
						d = d + 1;
					end
				end
			end
			subarray = real(ifft2((subarray)));
			X(k*8 - 7: k*8, l*8-7: l*8, j) = subarray;
		end
	end
end

drop = d / (s(1)*s(2)*s(3));
disp('Here is drop ratio')
disp(drop)
Y = X;
figure(1)
image(uint8(Y))
axis image
axis off
