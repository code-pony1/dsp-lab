t=-10:0.01:10;
g=heaviside(t-3);
figure(1)
plot(t,g)
axis([-15 15 -1 2])