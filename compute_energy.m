function E = compute_energy(masses,x,y,vx,vy)

m1=masses(1);
m2=masses(2);
m3=masses(3);

x1=x(1);
x2=x(2);
x3=x(3);

y1=y(1);
y2=y(2);
y3=y(3);

vx1=vx(1);
vx2=vx(2);
vx3=vx(3);

vy1=vy(1);
vy2=vy(2);
vy3=vy(3);


E1 = (m1*(vx1^2+vy1^2))/2 - (m1*m2)/(((x2-x1)^2+(y2-y1)^2)^(1/2)) - (m1*m3)/(((x3-x1)^2+(y3-y1)^2)^(1/2));
E2 = (m2*(vx2^2+vy2^2))/2 - (m2*m1)/(((x1-x2)^2+(y1-y2)^2)^(1/2)) - (m2*m3)/(((x3-x2)^2+(y3-y2)^2)^(1/2));
E3 = (m3*(vx3^2+vy3^2))/2 - (m3*m1)/(((x1-x3)^2+(y1-y3)^2)^(1/2)) - (m3*m2)/(((x2-x3)^2+(y2-y3)^2)^(1/2));

E = E1+E2+E3;
end