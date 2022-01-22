function y=impulse_response_0(t,b1,c1,b2,c2)
s=[b2;c2];
w=[0 b1;b1 c1];
m=inv(w)*s;
p=-c1/b1;
y=m(1).*exp(p.*t).*u(t,0)+m(2).*del(t,0);
fprintf('%d *exp(%d *t) *u(t)+ %d *del(t)',m(1),p, m(2))
end