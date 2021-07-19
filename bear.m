trials = 100000;
count_atLeastonemale = 0;
count_bothmale = 0;
for i = 1:trials
    bear1 = randi([0,1],1); % 0 is male and 1 is female
    bear2 = randi([0,1],1);
    if bear1*bear2 == 0
        count_atLeastonemale = count_atLeastonemale + 1;
    end
    if [bear1,bear2] == [0,0]
        count_bothmale = count_bothmale + 1;
    end
end

P = (count_bothmale/count_atLeastonemale)*100;
disp([str4, num2str(P),'%'])