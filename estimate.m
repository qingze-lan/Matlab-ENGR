function p = estimate(npts)
% random vector
x = rand(1,npts);
y = rand(1,npts);
count = 0;
for i = 1 : length(x)
    if y(i) < sqrt(1 - x(i)^2)
        count = count + 1; % count the number in the circle
    end
end

p = count/npts*4; % compute estimate pi

end