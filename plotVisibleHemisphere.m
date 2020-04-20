function plotVisibleHemisphere()
% Plot Hemisphere of Visible Sky
% Copyright 2016 The MathWorks, Inc.

[xEast,yNorth,zUp] = sphere;
zUp(zUp < 0) = NaN;

surf(xEast,yNorth,zUp,'FaceAlpha',0.05,'EdgeAlpha',0.5);
axis equal;
axis off;
hold on;

plot3([-1.1 1.1],[0 0], [0 0],'Color','black','LineStyle','-.')
plot3([0 0],[-1.1 1.1], [0 0],'Color','black','LineStyle','-.')
text(1.25,0,0,'North','HorizontalAlignment','center')
text(-1.25,0,0,'South','HorizontalAlignment','center')
text(0,-1.25,0,'East','HorizontalAlignment','center')
text(0,1.25,0,'West','HorizontalAlignment','center')
hold off;