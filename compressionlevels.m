function compressionlevels(X)

%	Experimentally Determined
%	tol 		drop
%	10^-1000	0
%	11		0.4061
%	210		0.8500
%	868		0.9500

[Y1, drop] = compress(X, 10^-1000);
[Y2, drop] = compress(X, 11);
[Y3, drop] = compress(X, 210);
[Y4, drop] = compress(X, 868);

figure
subplot(2,2,1)
image(uint8(Y1))
axis image
axis off
title('Subplot 1: TOL = 10^-1000 DROP = 0')

subplot(2,2,2)
image(uint8(Y2));
axis image;
axis off;
title('Subplot 2: TOL = 11 DROP = 0.4061')

subplot(2,2,3)
image(uint8(Y3));
axis image;
axis off;
title('Subplot 3: TOL = 210 DROP = 0.8500')

subplot(2,2,4)
image(uint8(Y4));
axis image;
axis off;
title('Subplot 4: TOL = 868 DROP = 0.9500')
