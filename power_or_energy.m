function [ ] = power_or_energy( s,t)

s2=s.^2;
energy=int(s2,t,-inf,inf);

if energy~=inf && energy~=-inf
    disp ('the signal is an energy signal with energy equal to ' );
    disp(energy);
end

power=limit((int(s2,t,-t/2,t/2))/t,t,inf);

if power~=inf && power~=-inf
    disp('the signal is a power signal with power equal to ');
    disp(power);
end