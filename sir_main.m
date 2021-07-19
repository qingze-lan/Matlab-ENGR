%(b)
global gamma0
gamma0_value = [];
err_value = [];
for gamma0 = (1:10:1000)/500000
    % initial data and initialize initial time and end time 
    x0 = [500000 1 0];
    tspan = 0:89;
    % compute the solution using the built-in ode solver ode45
    [tsoln,Xsoln] = ode45(@sir_model,tspan,x0);
    sum = 0;
    Ndays = length(covid_data);
    for i = 1:Ndays
        sum = sum+(Xsoln(i,3)-covid_data(i,2))^2;
    end
    err = sqrt(sum/Ndays);
    gamma0_value(end+1) = gamma0;
    err_value(end+1)= err;
end
%(c)
plot(gamma0_value,err_value,'linewidth',3,'Color','black')
title('Error analysis (SIR model vs data)') % create the title
xlabel('Gamma0') % name x label
ylabel('Error') % name y label
grid on
set(gca,'FontSize',15)

%(d)
index = find(err_value == min(err_value));
gamma0 = gamma0_value(index);
x0 = [500000 1 0];
tspan = 0:89;
[tsoln,Xsoln] = ode45(@sir_model,tspan,x0);
figure
plot(tsoln,Xsoln(:,3),'linewidth',3,'Color','black')
hold on
plot(covid_data(:,2),'m.','linewidth',3)
title(['SIR model, Estimated Gamma0 = ',num2str(gamma0)]) % create the title
legend('Deaths (SIR)','Deaths (data)','location','best') % create the legend
xlabel('Time (days since March 15)') % name x label
ylabel('Number of individuals') % name y label
grid on
set(gca,'FontSize',15)