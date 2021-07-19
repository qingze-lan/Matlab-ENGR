function [ax,ay] = compute_acceleration(masses,x,y)

m1=masses(1);
m2=masses(2);
m3=masses(3);

x1=x(1);
x2=x(2);
x3=x(3);

y1=y(1);
y2=y(2);
y3=y(3);

ax1=(x2-x1)*m2/(sqrt((x2-x1)^2+(y2-y1)^2))^3+(x3-x1)*m3/(sqrt((x3-x1)^2+(y3-y1)^2))^3;
ax2=(x1-x2)*m1/(sqrt((x1-x2)^2+(y1-y2)^2))^3+(x3-x2)*m3/(sqrt((x3-x2)^2+(y3-y2)^2))^3;
ax3=(x1-x3)*m1/(sqrt((x1-x3)^2+(y1-y3)^2))^3+(x2-x3)*m2/(sqrt((x2-x3)^2+(y2-y3)^2))^3;

ay1=(y2-y1)*m2/(sqrt((x2-x1)^2+(y2-y1)^2))^3+(y3-y1)*m3/(sqrt((x3-x1)^2+(y3-y1)^2))^3;
ay2=(y1-y2)*m1/(sqrt((x1-x2)^2+(y1-y2)^2))^3+(y3-y2)*m3/(sqrt((x3-x2)^2+(y3-y2)^2))^3;
ay3=(y1-y3)*m1/(sqrt((x1-x3)^2+(y1-y3)^2))^3+(y2-y3)*m2/(sqrt((x2-x3)^2+(y2-y3)^2))^3;

ax=[ax1,ax2,ax3];
ay=[ay1,ay2,ay3];

end