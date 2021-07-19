% Using Monte Carlo methods to estimate ¦Ð
npts = 10000;
count = 0;
r=1;
theta=0:pi/100:2*pi;
x=r*cos(theta);                              
y=r*sin(theta);                              
plot(x,y)
xlim([0,1])
ylim([0,1])
hold on
for i = 1:npts
    a = rand;
    b = rand;
    plot(a,b,'.')
    pause(0.0001)
    if a^2 + b^2 < 1
        count = count + 1;
    end
end
p = count/npts*4;
disp(['The estimate for ¦Ð using the Monte Carlo method is ',num2str(p)])