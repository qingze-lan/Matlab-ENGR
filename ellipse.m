t = 0:2*pi/100:2*pi;
x = 3+6*cos(t);
y = -2+9*sin(t);

% Call for option 1
[x1, y1] = geometric(x,y,1); 
figure(1);
plot(x1,y1);
axis equal;

% Call for option 2
[x2, y2] = geometric(x,y,2); 
figure(2);
plot(x2,y2);
axis equal;

% Call for option 3
[x3, y3] = geometric(x,y,3); 
figure(3);
plot(x3,y3);
axis equal;

% Call for option 4
[x4, y4] = geometric(x,y,4); 
figure(4);
plot(x4,y4);
axis equal;