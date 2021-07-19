px = 1/20;
x = [1:20];
mu1 = sum(x*px); % compute the mean for first die
mu2 = sum(x*px); % compute the mean for second die
mean = mu1 + mu2; % adding the result

mu1=0;
mu2=0;
% create a vector to store the result of dice
vec_die1 = [];
vec_die2 = [];
for n = 1:50
    die1 = randi(20,1);
    die2 = randi(20,1);
    vec_die1(n) = die1; % adding new result into the vector
    vec_die2(n) = die2;
    % compute the mean
    mu1 = sum(vec_die1)/n;
    mu2 = sum(vec_die2)/n;
    mu = mu1+mu2; % adding the result
    plot(n,mu,'b*');
    hold on
    plot(n,mean,'ro');
    hold on
    title('Two 20-sided Die Mean');
    axis([1 50 1 40]);
    xlabel('Rolls');
    ylabel('Mean Value');
    drawnow;
    pause(0.02);
end
disp(['The mean of two 20-sided die is: ', num2str(mu)])