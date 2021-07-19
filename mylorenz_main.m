global sigma rho beta
sigma = 10;
rho = 25;
beta = 2.6;

[t,y] = ode45(@mylorenz, [0 100], [1;1;1]); % Generate Solution

figure(1)
plot(y(:,1),y(:,3)) % Create the Plot
figure(2)
plot3(y(:,1),y(:,2),y(:,3)) % Create 3d Plot