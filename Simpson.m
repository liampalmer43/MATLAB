function result=Simpson(a,b,n,F)

width = (b - a)/n;
total = 0;
step = a;

for i = 1:n
        total = total + (F(step) + 4*F(step+(width/2)) + F(step+width))*width/6;
        step = step + width;
end

result = total;
