% load the initial value first (masses,x,y,vx,vy,ax,ay)
clear
load 3body.mat;
[ax,ay] = compute_acceleration(masses,x,y);
dt = 0.0005;
[xNew,yNew,vxNew,vyNew] = euler_step(x,y,vx,vy,ax,ay,dt);
t = 0;
step = 0;
N = 0.5/dt;
figure

while t <= 100
    [xNew,yNew,vxNew,vyNew] = euler_step(x,y,vx,vy,ax,ay,dt);
    %[xNew,yNew,vxNew,vyNew] = leap_frog_step(masses, x,y,vx,vy,ax,ay,dt);
    % If using Leapfrog mathod
    x = xNew;
    y = yNew;
    vx = vxNew;
    vy = vyNew;
    [ax,ay] = compute_acceleration(masses,x,y);
    if rem(step,N) == 0
        draw_3body(x,y)
        hold on;
    end
    t = t+dt;
    step = step +1;
end