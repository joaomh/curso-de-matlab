function [SSerror, r] = myFitCircData(r, xy)


angle = linspace(0,2*pi,length(xy));
x = xy(1,:);
y = xy(2,:);

% Predicted
XX = r*cos(angle);
YY = r*sin(angle);

SSeX = sum( (XX-x).^2 ) / sum(x.^2);
SSeY = sum( (YY-y).^2 ) / sum(y.^2);
SSerror = (SSeX + SSeY)/2;

% Plot
plot(x,y,'mo', XX, YY, 'b', 'linew', 2), drawnow;