function n = golden_ratio()

n = 2;

f1 = 1;
f2 = 2;

golden_ratio_0 = 0;
golden_ratio = f2/f1;

while abs(golden_ratio-golden_ratio_0) > 10^(-9)
    y = f2;
    f2 = f1 + f2;
    f1 = y;
    
    golden_ratio_0 = golden_ratio;
    golden_ratio = f2/f1;

    n=n+1;

end

end