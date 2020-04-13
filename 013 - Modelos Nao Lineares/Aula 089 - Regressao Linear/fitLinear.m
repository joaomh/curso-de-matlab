function [SSerror, p] = fitLinear(Cpoint,x,y)

% Fit the two linear models to the data
x = x(:);
y = y(:);

% Make sure that x and y are sorted
[x, idx] = sort(x);
y = y(idx);

Cpoint = round(Cpoint);

% fit the data
x1 = [ones(Cpoint,1) x(1:Cpoint)];
y1 = y(1:Cpoint);
cov1 = (x1' * x1) \ (x1' * y1 );

x2 =  [ones(length(x)-Cpoint,1) x(Cpoint+1:end)];
y2 = y(Cpoint+1:end);
cov2 = (x2' * x2) \ (x2' * y2 );

YY = [cov1(1)+cov1(2)*x(1:Cpoint); cov2(1)+cov2(2)*x(Cpoint+1:end)];

SSerror = sum( (YY-y).^2 )/ sum(y.^2);

p = [ cov1' cov2' x(Cpoint) SSerror ];

% plot
plot(x,y,'mo',x(1:Cpoint),YY(1:Cpoint),'b',x(Cpoint+1:end),YY(Cpoint+1:end),'b'), drawnow