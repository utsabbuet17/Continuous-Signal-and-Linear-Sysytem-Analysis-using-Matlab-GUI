function y=impulse_response_2(t,a1,b1,c1,a2,b2,c2)
u1=[a1,b1,c1];
z=roots(u1);
s=[a2;b2;c2];
w=[0 0 a1;a1 0 b1;(b1-a1*abs(z(1))) a1 c1];
m=inv(w)*s
y=m(1).*exp(z(1).*t).*u(t,0)+m(2).*t.*exp(z(2).*t).*u(t,0)+m(3).*del(t,0);
fprintf('%d *exp(%d *t)*u(t)+ %d *t*exp(%d *t)*u(t)+%d *del(t)',m(1),z(1),m(2),z(2),m(3))
end