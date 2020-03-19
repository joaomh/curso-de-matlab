%%
%     Curso do canal ExataMenteS
%     Aula 6 - Matrizes Simetricas
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atráves da tecnologia :)
%     Instrutor: João Pinheiro

%%

% Iniciando uma matriz quadrada
A = [ 31 4 9; 2 12 0; 7 21 4 ];

% Adicionando a transporta
Asim = A + A';

% Mostrar que e uma matriz simetrica
Asim - Asim'

% Ajustar a matriz
Asim = (A + A') / 2


%%
% Criando matrizes simetricas utilizando a multiplicacao

A = [ 12 9 3; 7 3 0 ];

% Transforme essa matriz em uma matriz quadrada 
% E em uma matriz simetrica, multiplicando pela transposta

Asim1 = A * A';

Asim2 = mtimes(A',A);

% Mostre a simetria
Asim1 - Asim1'

Asim2 == Asim2'
Asim2 - Asim2'


% Analise grafica
figure(1), clf
subplot(131)
imagesc(A)
set(gca,'xtick',[],'ytick',[])
title('A'), axis image

subplot(132)
imagesc(Asim1)
set(gca,'xtick',[],'ytick',[])
title('AA^T'), axis image

subplot(133)
imagesc(Asim2)
set(gca,'xtick',[],'ytick',[])
title('A^TA'), axis image

%%
