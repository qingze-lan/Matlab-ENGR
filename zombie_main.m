global mu delta beta gamma

% Battle 1
mu=0.010; delta=0.001; beta=0.002; gamma=0.0015;
% Battle 2
% mu=0.010; delta=0.001; beta=0.002; gamma=0.0019;
% Battle 3
% mu=0.010; delta=0.001; beta=0.002; gamma=0.0022; 

tspan = [0 28]; % time interval
X0 = [1000;50]; % initial valuen for X
[tsoln,Xsoln] = ode45(@zombie,tspan,X0); % Genearte the soluntion

plot (tsoln,Xsoln(:,1)) % create the plot
hold on
plot (tsoln,Xsoln(:,2)) % create the plot
legend('P','Z') % create a lengend
xlabel('t')
ylabel('P, Z')