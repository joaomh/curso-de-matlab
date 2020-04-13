%%
%     Curso do canal ExataMenteS
%     Aula 84 - Triangulo de Sierpinski
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%%
% Number of points in the image
n = 100000;

% Initialize x and y vectors
[x,y] = deal( zeros(1,n) );

% Sierpinksi 
for i = 2:n
    
    % Random number k
    
    
    % pick x and y points
    
    
end

% plot those points
figure(1), clf
plot(x,y,'r.')
axis off
set(gcf,'color','w')
title('Sierpinski Triangle')
axis off

%% Animation

% Controls speed
skip = 100;

% Sort



% Plot
figure(2)
h = plot(x,y,'r.');
title('Sierpinski triangle')
set(gca, 'xlim', [min(x) max(x)], 'ylim', y([1 end]))
axis off

for i = 1:skip:n
    set(h,'XData',x(1:i),'YData',y(1:i))
    pause(.001)
end
