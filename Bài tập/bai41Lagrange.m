x = input("Nhap cac gia tri cua x: ");
y = input("Nhap cac gia tri cua y: ");
n = length(x);
L = zeros(n,n); %tạo ma trận cỡ nxn 
for i = 1:n %cho hàng 
    V = 1;
    for j = 1:n %tạo đa thức
        if i ~= j
            V = conv(V,poly(x(j)))/(x(i)-x(j))
        end
    end
    L(i,:) =V*y(i);
end
L
disp(L)
P = sum(L)