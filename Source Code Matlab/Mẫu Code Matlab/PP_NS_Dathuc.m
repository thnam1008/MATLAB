function Cost_Function(x,y,x0)
syms a b
m=sum(x.^2);
n=sum(x);
p=sum(x.*y);
q=sum(y);
pt1=m*a+n*b-p;
pt2=n*a+length(x)*b-q;
[a b] = solve(pt1,pt2);
disp('He so a: ')
disp(double(a))
disp('He so b: ')
disp(double(b))
y0 = a*x0+b;
disp('Ket qua xap xi: ')
disp(double(y0))
end