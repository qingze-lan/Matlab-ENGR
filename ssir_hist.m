tspan = 90;
X0 = [500000 1 0];
deaths = [];
% call ssir_model 2000 times
Nr = 2000;
for nr = 1:Nr
    [S,I,R,tVec] = ssir_model(tspan,X0);
    deaths(end+1)=R(end);
end
histogram(deaths,'FaceColor','b','EdgeColor','black') % create the histogram
title('Histogram (total number of deaths at day 90, 2000 realizations)') % create the title