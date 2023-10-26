h=0.1; a=0; b=10; n=(b-a)/h;
x(1)=0.1; y(1)=2;
for i=1 : 100
    x(i+1) = a+(i+1)*h;
    y(i+1)=y(i)+h*(x(i)/(y(i)+1));
    disp("y(" + i + ") = " + y(i+1))
end