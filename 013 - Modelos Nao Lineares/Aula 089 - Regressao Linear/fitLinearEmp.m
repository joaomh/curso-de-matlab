function [] = fitLinearEmp()

% Fit the two linear models to the data
x = x(:);
y = y(:);

% Make sure that x and y are sorted
[x, idx] = sort(x);
y = y(idx);

Cpoint = round(Cpoint);

% fit the data






% plot
plot(x,y,'mo',x(1:Cpoint),YY(1:Cpoint),'b',x(Cpoint+1:end),YY(Cpoint+1:end),'b'), drawnow