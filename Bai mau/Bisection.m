function x = Bisection(f,a,b,epsilon)
a = -1;
b = 2;
epsilon = 10^(-3);
f = @(x) x^2 + 2*sin(x) -1/2;
while abs(b-a) >= epsilon
    x = (b+a)/2;
    fx = subs(f,x);
    fa = subs(f,a);
    if fx*fa > 0
        a = x;
    else
        b = x;
    end
end
end