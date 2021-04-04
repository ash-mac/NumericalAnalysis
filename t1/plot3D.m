t = 0:pi/100:2*pi;
xt = sin(t.^2);
yt = cos(1./t);
zt = t;
plot3(xt,yt,zt)
hold on
grid on
xlabel('X-axis')
ylabel('Y-axis')
zlabel('Z-axis')
plot3(xt, 0*t, zt); 
plot3(0*t, yt, zt); 
plot3(xt, yt, 0*t); 
hold off
