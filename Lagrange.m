function fxg=Lagrange(totalPoints,xValues,fValues,xg)

final = 0;

for p = 1:totalPoints
	num = 1;
	den = 1;
	for q = 1:totalPoints
		if p ~= q
			num = num * (xg - xValues(q));
			den = den * (xValues(p) - xValues(q));
		end
	end
	final = final + ((num * fValues(p))/den);
end

fxg = final;
