function draw_3body(x,y)
clf
hold on
xlim([-12 12])
ylim([-12 12])
axis square
set(gca,'Color','k')
rectangle('Position',[x(1)-1 y(1)-1 2 2],'Curvature',[1 1],'FaceColor','y','EdgeColor','y')
rectangle('Position',[x(2)-.3 y(2)-.3 .6 .6],'Curvature',[1 1],'FaceColor','b','EdgeColor','g')
rectangle('Position',[x(3)-.1 y(3)-.1 .2 .2],'Curvature',[1 1],'FaceColor','w','EdgeColor','w')
pause(0.05)