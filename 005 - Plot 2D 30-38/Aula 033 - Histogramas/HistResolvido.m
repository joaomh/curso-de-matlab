%%
%     Curso do canal ExataMenteS
%     Aula 33 - Histogramas
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atraves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Instrutor: Joao Pinheiro
%%

% Numero dos dados
n = 1000;

% Numero das barras 'bin' no histograma
k = 40;

% Gerar uma distribuicao log-normal
data = exp( randn(n,1) / 2 );

figure(1), clf

% Mostrar o histograma
figure(1), clf
histogram(data,k)

% Uma opcao melhor para esse exercicio
[y,x] = hist(data,k);
figure(2), clf
plot(x,y,'s-','linew',2,'markersize',16,'markerfacecolor','r')
xlabel('Valor')
ylabel('Numero')

%% Regra de Freedman-Diaconis

h = 2 * iqr(data) / ( n^(1/3) );
k = ceil( (max(data) - min(data)) / h );
histogram(data,k)
xlabel('Valor'), ylabel('Numero')
title([ 'F-D "regra" usando ' num2str(k) ' Barras' ])

%% Um filme mostrando o histograma com as barras crescendo
bi = round( linspace(5,n/2,30) );

h = plot(x,y,'s-','linew',2,'markersize',16,'markerfacecolor','g');
xlabel('Value'), ylabel('Count');

for i = 1:length(bi)
    % Utilizar a funcao 'hist' para pegar os dados graficos para esse 'bin'
    [y, x] = hist(data,bi(i));
    
    % Atualizar os dados em X e Y
    set(h, 'XData', x, 'YData', y);
    
    % Atualizar o titulo
    title([ 'Histograma com ' num2str(bi(i)) ' bins' ])
    
    pause(.10)
end
