function [newx,newy,newvx,newvy]=euler_step1(x,y,vx,vy,ax,ay,dt)
newx = zeros(1,3);
newy = zeros(1,3);
newvx = zeros(1,3);
newvy = zeros(1,3);
for i = 1:3
    newx(i)=x(i)+dt*vx(i);
    newvx(i)=vx(i)+dt*ax(i);
    newy(i)=y(i)+dt*vy(i);
    newvy(i)=vy(i)+dt*ay(i);
end
end