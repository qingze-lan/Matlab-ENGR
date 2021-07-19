circuit1(1,2,6,10)

function I = circuit1(R_1,R_2,R_3,V)
A = [1 -1 -1 0;0 1 1 -1;R_1 0 R_3 0;R_1 R_2 0 0];
b = [0;0;V;V];
I = A\b;
end