%(a)
A = [1 0;1 1;1 2;1 3;1 4];
b = [0.1;7.8;13.2;8.7;12.4];
x = pinv(A)*b;
C = x(1);
D = x(2);
disp([C,D])

%(b)
tlist = [0,1,2,3,4];
ylist = [0.1;7.8;13.2;8.7;12.4];
plot(tlist,ylist,'o')
hold on
plot(tlist,C+D*tlist)