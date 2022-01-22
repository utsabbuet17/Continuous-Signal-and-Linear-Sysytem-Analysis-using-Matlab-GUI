function [ ] = energy( s,t)
%UNTITLED Summary of this function goes here
%   s is the input signal
%   t is the independent variable

s2=s(t).*s(t);
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
