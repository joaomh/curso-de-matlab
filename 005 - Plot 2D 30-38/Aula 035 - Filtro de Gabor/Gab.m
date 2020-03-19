%%
%     Curso do canal ExataMenteS
%     Aula 35 - Filtro de Gabor
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atraves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Instrutor: Joao Pinheiro
%%

% Frequencia e Fase
freq = .005;  
phi = -pi/4;

% Sigma da Gaussiana
sig = 50;

% Resolucao da imagem
n = 400;

% Iniciar a funcao seno
[X,Y] = 
Xp    = 

% Calculo da funcao sino 2D
sin2d = 

% Criar a Gaussiana 2D
gaus2d = 

% Produto da Gaussiana e a Seno
img = 
figure(1), clf
colormap(jet);
imagesc(img);

figure(2), clf
colormap(jet);
% Criar o eixo para o filtro
gab_ax = axes; % Aqui nos temos um Handle
% Escreva get(gab_ax) e veja o que o MATLAB nos mostra
% Procure pela posicao, e ela que vamos alterar
% Eles sao numeros entre 0 e 1
% O primeiro numero e Eixo da Esquerda
% O segundo e o Eixo de baixo
% O terceiro e o Comprimento
% O quarto e a Altura
% Entao e essa propriedade que vamos alterar
set(gab_ax,'Position',[.1 .1 .7 .7])
imagesc(-n:n,-n:n,img)
axis xy
clim = max(abs(img(:)));
set(gca,'clim',[-clim clim]*.7,'xtick',[],'ytick',[])

% Criar o eixo da distribuicao marginal
dt_ax = axes; % Eixo da direita
set(dt_ax,'Position',[.8 .1 .2 .7])

tp_ax = axes; % Eixo do topo
set(tp_ax,'Position',[.1 .8 .7 .2])

% Plot
plot(dt_ax,sum(img,2),-n:n,'k','linew',3)
plot(tp_ax,-n:n,sum(img,1),'k','linew',3)

% Off os eixos
axis(dt_ax,'off')
axis(tp_ax,'off')

