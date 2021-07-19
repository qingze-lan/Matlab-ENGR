%(a)
load covid_data.mat % load the data downloaded from gauchospace
%(b) create the figure
figure;
plot(covid_data(:,1),'linewidth',3,'Color','m')
hold on
plot(covid_data(:,2),'linewidth',3,'Color','black')
xlabel('Time(days)') % name x label
ylabel('Number of individuals') % name y label
legend('Infected Individuals','Deaths','location','northwest') % create the legend
title('Covid-19 data') % create the title
grid on
set(gca,'FontSize',15)

%(c)
figure;
semilogy(covid_data(:,1),'linewidth',3,'Color','m')
hold on
semilogy(covid_data(:,2),'linewidth',3,'Color','black')
xlabel('Time(days)') % name x label
ylabel('Number of individuals') % name y label
legend('Infected Individuals','Deaths','location','northwest') % create the legend
title('Covid-19 data') % create the title
grid on
set(gca,'FontSize',15)