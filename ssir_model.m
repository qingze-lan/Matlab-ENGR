function [S,I,R,tVec] = ssir_model(tspan,X0)
t = 0;
gamma0 = 0.0012;
beta = @(t)(7.50*10^(-7)*exp(-0.05088*t));
gamma = @(t)(gamma0*exp(-0.0199*t));
% initial data
i = 1;
tVec = [0];
S = [X0(1)];
I = [X0(2)];
R = [X0(3)];

while t < tspan
    r1 = rand;
    r2 = rand;
    a1 = S(i)*I(i)*beta(t);
    a2 = I(i)*gamma(t);
    a0 = a1+a2;
    tau = 1/a0*log(1/r1);
    
    % compute the number of individuals for each group S, I, R
    if (r2 >= 0 && r2 < a1/a0)
        S(i+1) = S(i)-1;
        I(i+1) = I(i)+1;
        R(i+1) = R(i);
    elseif (r2 >= a1/a0 && r2<1)
        S(i+1) = S(i);
        I(i+1) = I(i)-1;
        R(i+1) = R(i)+1;
    end
    
    % make sure that the system always includes at least one infected person   
    if I(i) <= 0
        S(i) = 1;
    end
    
    tVec(i+1) = t+tau;
    i = i+1;
    t = t+tau;
end