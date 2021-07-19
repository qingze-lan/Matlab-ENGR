function [xt,yt] = geometric(x,y,option)

switch option
    case 1 % Translation
        xt = x + 2;
        yt = y - 3;
    case 2 % Scaling
        xt = x * 0.5;
        yt = y * 2;
    case 3 % Rotation
        xy = [x;y];
        R = [cos(pi/4) sin(pi/4); -sin(pi/4) cos(pi/4)];
        R1 = R*xy;
        xt = R1(1,:);
        yt = R1(2,:);
    case 4 % reflection
        xy = [x;y];
        r = [0 1; 1 0];
        r1 = r * xy;
        xt = r1(1,:);
        yt = r1(2,:);
end

end