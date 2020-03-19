%%
%     Curso do canal ExataMenteS
%     Aula 40 - Superficie Gaussiana
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atraves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%%

% Gaussiana
n = 300; % Resolucao
s = 4; % Largura

x = linspace(-10,10,n);
[X,Y] = meshgrid(x);

gaus2d = exp( -(X.^2 + Y.^2) ./ (2*s^2) );

figure(1), clf

% Surf
surf(x,x,gaus2d)
axis square
rotate3d on
shading interp

% Mudar as cores, vizualizar algo '4D' em '3D'
figure(2), clf
cor = randn(size(gaus2d));
surf(x,x,gaus2d,cor);
axis square
rotate3d on
shading interp

%% Mudar a Gaussiana e inserir uma figura

n  = 300; % Resolucao
s1 = 3; % Largura em X
s2 = 4; % Largura em Y

x = linspace(-10,10,n);
[X,Y] = meshgrid(x);

% Gaussiana asimetrica
gaus2d = exp( -(X.^2/(2*s1^2) + Y.^2/(2*s2^2)) );

figure(3), clf

% Surf
surf(x,x,gaus2d)
shading interp
axis square
rotate3d on

% Precisamos alterar a dimensao da imagem
img = imread('saturn.png');
imgT = imresize(img, size(gaus2d));
% Uma Alternativa caso vc nao tenha a funcao imresize
% imgT = mean ( img(1:n,1:n,:), 3 );

% Inserir a imagem na Gaussiana
surf(x,x,gaus2d,imgT(:,:,3));
axis square
rotate3d on
shading interp
colormap jet