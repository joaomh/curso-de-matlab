%%
%     Curso do canal ExataMenteS
%     Aula 15 - Autovalores e Autovetores de uma Matriz de Hankel
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atráves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Instrutor: Joao Pinheiro
%%
m = 50;

% Criar o vetor
a = randn(m,1);

% Matriz de Hankel
H = hankel( a, a([ m 1:m-1 ]) );

% Decompor os Autovalores e Autovetores
[V,D] = eig( H );

% Organizar V e D de maneira decrecente
[valores,num] = sort( diag(D), 'descend' );
V = V(:,num);


% Plot dos Autovalores
figure(1), clf
subplot(141);
plot(valores, 's-', 'markerfacecolor', 'b', 'linew', 2);
ylabel('\lambda'), xlabel('Ordem');
title('Espectro de \lambda');

% Autovetores
subplot(1,4,2:4)
imagesc(V)
title('\lambda Em Ordem pelos Autovetores')


% Alguns Exemplos
figure(2), clf
plot(V(:,[ 1 5 12]),'linew',3)
title('Alguns Autovetores')




