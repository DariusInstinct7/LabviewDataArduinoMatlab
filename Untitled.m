clear;close all;clc
%modelo de sgundo orden
zeta = 0.6; %factor amrotiguamiento
wn=1; %frec natural
s = tf('s'); %operador de clase, obvio
% g = tf(wn^2,[1 2*wn*zeta wn^2 ])
g = wn^2 /(s^2+2*wn*zeta*s+wn^2) %prototipo
t=0:0.1:20; % simulation time
r = ones(size(t)); %escalon
y =lsim(g,r,t); %salida

%DATA 
%data1 = [t,r,y];
data1 = [t',r',y];
data2 = [t';r';y] %con punto y comas
save data11.lvm data1 -ascii -tabs
save data12.lvm data2 -ascii -tabs %ascii es cambio de formato, modo 
%tab es de modo tabulador



