% load the initial value first (masses,x,y,vx,vy,ax,ay)
clear
load 3body.mat;
[ax,ay] = compute_acceleration(masses,x,y);
dt = 0.5;
[xNew,yNew,vxNew,vyNew] = euler_step(x,y,vx,vy,ax,ay,dt);
t = 0;
figure

while t <= 100
    [xNew,yNew,vxNew,vyNew] = leap_frog_step(masses, x,y,vx,vy,ax,ay,dt);
    x = xNew;
    y = yNew;
    vx = vxNew;
    vy = vyNew;
    [ax,ay]=compute_acceleration(masses,x,y);
    if mod(t,0.5) == 0
        draw_3body(x,y)
        hold on;
    end
    t = t+dt;
end