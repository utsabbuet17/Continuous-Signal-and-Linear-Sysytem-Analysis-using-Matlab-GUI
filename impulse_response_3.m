function [y z] =impulse_response_3(t,a1,b1,c1,a2,b2,c2)
u1=[a1 b1 c1];
z=roots(u1);
s=[c2;b2;a2];
w=[a1*real(z(1))+b1 a1*abs(imag(z(2))) c1;a1 0 b1;0 0 a1];
m=inv(w)*s;
for i=1:3
    if( m(i)<1e-15)
        m(i)=0;
    end
end

y=(m(1).*exp(real(z(1)).*t).*cos(imag(z(1)).*t)+m(2).*exp(real(z(1)).*t).*sin(imag(z(1)).*t)).*u(t,0)+m(3).*del(t,0);
fprintf('%d *exp(%d *t)*cos(%d *t)+%d *exp(%d *t)*sin(%d *t))*u(t)+%d *del(t,0)',m(1),real(z(1)),imag(z(1)),m(2),real(z(1)),imag(z(1)),m(3))
end