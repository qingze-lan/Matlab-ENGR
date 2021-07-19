count = 0;
trials = 1000000;
for n = 1:trials
    wave = rand(7,1);
    if sum(wave<=0.1) == 3
        count = count+1;
    end
end

str3 = 'The probability of getting exactly 3 big waves in a set is: ';
disp([str3, num2str(count/trials)])