%%
%     Curso do canal ExataMenteS
%     Aula 15 - Autovalores e Autovetores de uma Matriz de Hankel
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atráves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Instrutor: Joao Pinheiro
%%
m = 20;

% Criar o vetor
a = randn(m,1);

% Matriz de Hankel
H = hankel( a, a([ m 1:m-1 ]) );

% Decompor os Autovalores e Autovetores
[V,D] = 

% Organizar V e D de maneira decrecente
[valores,num] = 
V = 


% Plot dos Autovalores
figure(1), clf
subplot(141);
plot(, 's-', 'markerfacecolor', 'b', 'linew', 2);
ylabel('\lambda'), xlabel('Ordem');
title('Espectro de \lambda');

% Autovetores
subplot(1,4,2:4)
imagesc()
title('\lambda Em Ordem pelos Autovetores')


% Alguns Exemplos
figure(2), clf
plot(,'linew',3)
title('Alguns Autovetores')




