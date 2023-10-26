a=0;
b=1;
f= @(x,y) y+y*x^2;
x(1)=0;
y(1)=1;
h=0.1;
n=(b-a)/h;
for i=2:1:10
x(i)=a+i*h
y(i)= y(i-1)+h*f(x(i-1),y(i-1))
end
plot (y);