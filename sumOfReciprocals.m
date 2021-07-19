ER = 10;
s = 0;
N = 1;
while ER >= 0.01
   N_sum = (1/(N^2));
   s = s + N_sum;
   ER =abs((((pi^2)/6)-s));
   N = N + 1;
end
disp(N)
