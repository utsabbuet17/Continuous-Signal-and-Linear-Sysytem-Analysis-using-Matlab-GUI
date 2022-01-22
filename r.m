function y=r(t,n)
z=-1*n;
if(z>=0)
unit= t>=z;
y=(t-z).*unit;
else 
    unit= t>=z;
    y=(t-z).*unit;
end
