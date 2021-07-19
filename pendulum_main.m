X0 = [pi/4;0]; % initial condition
tspan = [0 20]; % the time interval
% solve the ODE
[tsoln,Xsoln] = ode45(@pendulum,tspan,X0);
% call the animate function
animate(tsoln,Xsoln(:,1))