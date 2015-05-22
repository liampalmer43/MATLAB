function result=Trapezoid(a,b,n,F)

width = (b - a)/n;
total = 0;
step = a;

for i = 1:n
	total = total + (F(step) + F(step+width))*width/2;
	step = step + width;
end

result = total;	
