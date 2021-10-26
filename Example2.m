%%workspace initialization
clc; clear; close all;
%% Generate the basic signals of commong length 16
N=16
n=0:N-1;
b=ones(1,N);
r=n;
P=8;
n1=0:P/2-1;
n2=P/2:P-1;
P1=P*ones(1,length(n2));
A=1;

tri_block=[2*A*n1/P 2*A*(P1-n2)/P];
t=[tri_block tri_block];
e=(5/6).^n;
figure(1)
stem(n,b);
figure(2)
stem(n,r);
figure(3)
stem(n,t);
figure(4)
stem(n,e);

%%i.crete&display r[n-6]*u[n]
figure('Name','Tut2.elementarty signals');
stem(n,r);
grid;
hold on;
stem(n+6,r,'r*');
title('r[n] (blue) and v[n]=r[n-6]*u[n] (red)');

%%i.crete&display z[n]=t[n]*(u[n]-u[n-10])
z=[t(1:10) zeros(1,6);];
figure('Name','Tut2.elementarty signals');
stem(n,t);
grid;
hold on;
stem(n,z,'r*');
title('t[n] (red) and z[n]=t[n]*(u[n]-u[n-10])(blue)');
