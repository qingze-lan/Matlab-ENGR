%(a)
function u = sir_model(t,X)

global gamma0

beta = 7.5*(10^-7)*exp(-0.05088*t);
gamma = gamma0*exp(-0.0199*t);

u = [-beta*X(1)*X(2);beta*X(1)*X(2) - gamma*X(2);gamma*X(2)];
end