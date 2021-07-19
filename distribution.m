npts = 100; % take input as 100
% loop for 10000 times
dist = zeros(1,10000);
for n = 1:10000
    dist(n) = estimate(npts); % assign value to the vector
end

histogram(dist) % draw the histogram