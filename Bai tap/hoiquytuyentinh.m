%Hồi quy bậc 3
x = [1 1.5 2 2.5 3 3.5];
y = [5.23401 2.09242 1.40563 -1.20224 -1.32105 0.01501];
sumx4 = 0;
for i = 1:length(x)
    sumx4 = sumx4 + x(i)^4;
end
sumx3 = 0;
for i = 1:length(x)
    sumx3 = sumx3 + x(i)^3;
end
sumx2 = 0;
for i = 1:length(x)
    sumx2 = sumx2 + x(i)^2;
end
sumx = 0;
for i = 1:length(x)
    sumx = sumx + x(i);
end
sumx2y = 0;
for i = 1:length(x)
    sumx2y = sumx2y +x(i)*x(i)*y(i)
end
sumxy = 0;
for i = 1:length(x)
    sumxy = sumxy + x(i)*y(i);
end
sumy = 0;
for i = 1:length(y)
    sumy = sumy + y(i);
end
A = [sumx4 sumx3 sumx2;sumx3 sumx2 sumx;sumx2 sumx 6];
B = [sumx2y;sumxy;sumy];
N = inv(A)*B
disp(N)