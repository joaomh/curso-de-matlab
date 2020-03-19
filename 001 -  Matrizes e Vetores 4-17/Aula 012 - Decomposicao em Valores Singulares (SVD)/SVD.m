%%
%     Curso do canal ExataMenteS
%     Aula 12 - Decomposição em Valores Singulares (SVD)
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atráves da tecnologia :)
%%
% Definindo a Matriz
m = 13;
n = 10;

% Escolhando o rank (Posto Matricial) desejado
r = 5;

% Matriz de numeros aleatorios
A = round( 13*randn(m,n) );

% Matriz SVD
[U,S,V] = 

% Reeconstrua a Matriz Original e Veriifique se e igual a matriz original
B = 


% Utilizando os primeiros "r"
A2 = 

% Verifique o rank e o size
rank( A2 )
size( A2 )

% Imagem da Matriz Original
figure(1), clf
tam = % Escala do gráfico
subplot(131)
imagesc(A);
set(gca,'xtick',[],'ytick',[],'clim',tam)
axis image
title([ 'Matriz Original, rank =' num2str(rank(A)) ]) % num2str converte um Numero para uma String
                                                      % A gente declarou r como um numero mas
                                                      % no Plot da imagem ele tem que ser um character
                                                                      
% Imagem da Matriz Reduzida
subplot(132)
imagesc(A2)
set(gca,'xtick',[],'ytick',[],'clim',tam)
axis image
title([ 'Matriz Reduzida, rank =' num2str(rank(A2)) ])

% Erro entre as duas Matrizes
subplot(133)
imagesc(A-A2)
set(gca,'xtick',[],'ytick',[],'clim',tam)
axis image
title('Erro entre as duas Matrizes')

%%
