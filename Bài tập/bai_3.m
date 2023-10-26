h=0.1; a=0; b=10; n=(b-a)/h;
x(1)=0.1; y(1)=0;
for i=1 : 100
    x(i) = a+i*h;
    y(i+1) = y(i)+h*((x(i)*y(i))/2);
    disp("y(" + i + ") = " + y(i+1))
end