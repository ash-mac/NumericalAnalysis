%x = viscircles([0 0;0 0;0 0;0 0;0 0],[1,2,3,4,5]); alternative
r1 = input('r1 = ');
r2 = input('r2 = ');
r3 = input('r3 = ');
r4 = input('r4 = ');
r5 = input('r5 = ');
theta = 0:pi/1000:2*pi;
plot(r1*cos(theta),r1*sin(theta))
hold on
plot(r2*cos(theta),r2*sin(theta))
plot(r3*cos(theta),r3*sin(theta))
plot(r4*cos(theta),r4*sin(theta))
plot(r5*cos(theta),r5*sin(theta))
hold off