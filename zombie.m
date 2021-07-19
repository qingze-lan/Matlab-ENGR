function u = zombie(t,X)

global mu delta beta gamma

P = X(1);
Z = X(2);
u = [mu*P-beta*P*Z-delta*P;-gamma*P*Z+beta*P*Z]; % the differential equation

end