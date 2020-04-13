function [SSerror, r] = myFitOvalData(r, xy)


angle = linspace(0,2*pi,length(xy));
x = xy(1,:);
y = xy(2,:);

% Predicted
xx = r(1)*cos(angle + r(3));
yy = r(2)*sin(angle + r(4));

SSeX = sum( (xx-x).^2 ) / sum(x.^2);
SSeY = sum( (yy-y).^2 ) / sum(y.^2);
SSerror = (SSeX + SSeY)/2;

% Plot
plot(x,y,'mo', xx, yy, 'b', 'linew', 2), drawnow;