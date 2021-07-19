tspan = 90;
X0 = [500000 1 0];
figure;
% call ssir_model 5 times
Nr = 5;
for nr = 1:Nr
    [S,I,R,tVec] = ssir_model(tspan,X0);
    if nr > 1
        semilogy(tVec,R,'LineWidth',3,'Color','black','HandleVisibility','off')
    else
        semilogy(tVec,R,'LineWidth',3,'Color','black')
    end
    hold on;
end
semilogy([0:89],covid_data(:,2),'m.','MarkerSize',15)
title('sSIR model')  % create the title
legend('Deaths (sSIR)','Deaths (data)','location','best') % create the legend
xlabel('Time (days since March 15)') % name x label
ylabel('Number of individuals') % name y label
grid on
set(gca,'FontSize',15)