%%
%     Curso do canal ExataMenteS
%     Aula 43 - Superficie de Gabor
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atraves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%%

% Parametros
freq = .05;  % Frequencia
phi = pi/4;  % Angulo da fase
sigma = 10;  % Sigma da Gaussiana
n = 20;      % Resolucao 

% Sin inicial
[X,Y] = meshgrid(-n:n,-n:n);
Xp    = X*cos(phi) + Y*sin(phi);

% Calculo da funcao seno
sine2d = sin( 2*pi * freq * Xp );

% Gaussiana
gaus2d = exp( -(X.^2 + Y.^2) / ( 2*sigma^2) );

% Filtro de Gabor
Gabor = sine2d .* gaus2d;


% plot
figure(1), clf
subplot(221)
imagesc(sine2d) % Plot do seno
axis square, axis off, axis xy
title('Seno')

% Plot da Gaussiana
subplot(222)
imagesc(gaus2d)
axis square, axis off
title('2D Gaussiana')

% Plot do Filtro de Gabor
subplot(212)
imagesc(Gabor)
axis square, axis off, axis xy
title([ 'Filtro de Gabor em f=' num2str(freq) ', \phi=' num2str(phi) ])
largura = max(abs(gaus2d(:)));
set(gca,'clim',[-largura largura]*.7)

%% 3D

% Com os vetores normais
figure(2), clf

axis square, axis off
rotate3d on

% Utilizando mesh
figure(3), clf

axis square, axis off