function area=int_simp1_3(f,xl,xu,n)
x=linspace(xl,xu,n);
h=x(2)-x(1);
sum=0;
for i=1:2:n-2
    sum=sum+f(x(i))+4*f(x(i+1))+f(x(i+2));
    h=h/2;
end
area=sum*(h/3);
end