function f = fibonacci(n)
    if n < 0
       f = 0;
    else
    F = zeros(n,1);
    F(1) = 1;
    F(2) = 2;
    for i = 3:n
        F(i) = F(i-1) + F(i-2);
    end
    f = F(n);
    end
end