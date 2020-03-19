%%
%     Curso do canal ExataMenteS
%     Aula 41 - Cubo Colorido
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atraves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%%

figure(1), clf

% Vamos aprender um jeito mais eficiente de plotar um cubo
% A ideia sera gerar Matrizes e plotar diversas linhas
n  = 20;
m = linspace(0,1,n);
[X,Y] = meshgrid(m);
x = [X(:) X(:)]';
y = [Y(:) Y(:)]';
z = [zeros(1,n*n); ones(1,n*n)];

% Usar o Plot3 paraconectar as linhas
plot3(x,y,z,'k', z,x,y,'b', y,z,x,'m')

% Plot os no
hold on
[X,Y,Z] = meshgrid(m);
cor = randn(1,n^3);
h = scatter3(X(:),Y(:),Z(:),200,cor,'filled');
set(h, 'Marker', 's')

rotate3d on
axis square
axis off
