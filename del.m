function y=del(t,n)
z=-1*n;
m=length(t);
for i=1:m
  if (t(i)==z)
    y(i)=Inf;
  else y(i)=0;
  end
end
end