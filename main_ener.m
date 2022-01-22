clc;
clear all;
close all;
t=0:0.001:2;
f=@ (t) 5+sin(9*t);
energy( f(t),t)


