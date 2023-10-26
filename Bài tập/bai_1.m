h = 0.05; a = 0; b = 2; n = (b-a)/h;
x(1) = 0; y(1) = 5;
for i = 1 : n - 1
    x(i+1) = a + h*(i-1);
    y(i+1) = y(i) + h*(((x(i)*y(i))-x(i))/y(i));
    disp("y(" + i + ") = " + y(i+1))
end
plot (y);