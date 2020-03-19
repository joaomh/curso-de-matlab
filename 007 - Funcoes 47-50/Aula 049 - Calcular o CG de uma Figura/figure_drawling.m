function figure_drawling(x)
% This funciton Draw a figure using the list of points
% Works very well with poligonals figure
% Copyright https://github.com/joaomh

domain = [-1.1 1.1 -1.1 1.1].*max(x(:)); % Domain

axis(domain);
axis square;

% Plot the line
line(x(1,:), x(2,:), 'Color', 'k', 'LineWidth', 4);

end
