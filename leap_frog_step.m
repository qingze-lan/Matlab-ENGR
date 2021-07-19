function [xNew,yNew,vxNew,vyNew] = leap_frog_step(masses, x,y,vx,vy,ax,ay,dt)
%this function calculates the new x,y coordinates as well as the new
%velocity in the x, y direction after time dt.
vx_h = vx + ax*dt/2.0;
vy_h = vy + ay*dt/2.0;

xNew = x + vx_h*dt;
yNew = y + vy_h*dt;

[ax_np1,ay_np1] = compute_acceleration(masses, xNew, yNew);

vxNew = vx_h + ax_np1*dt/2.0;
vyNew = vy_h + ay_np1*dt/2.0;

end