function [xNew,yNew,vxNew,vyNew] = euler_step(x,y,vx,vy,ax,ay,dt)

xNew1=x(1)+dt*vx(1);
xNew2=x(2)+dt*vx(2);
xNew3=x(3)+dt*vx(3);

yNew1=y(1)+dt*vy(1);
yNew2=y(2)+dt*vy(2);
yNew3=y(3)+dt*vy(3);

vxNew1=vx(1)+dt*ax(1);
vxNew2=vx(2)+dt*ax(2);
vxNew3=vx(3)+dt*ax(3);

vyNew1=vy(1)+dt*ay(1);
vyNew2=vy(2)+dt*ay(2);
vyNew3=vy(3)+dt*ay(3);

xNew = [xNew1,xNew2,xNew3];
yNew = [yNew1,yNew2,yNew3];
vxNew = [vxNew1,vxNew2,vxNew3];
vyNew = [vyNew1,vyNew2,vyNew3];

end