%%
%     Curso do canal ExataMenteS
%     Aula 31 - Pontos
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atraves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Instrutor: Joao Pinheiro
%%

% Gerar os dados
n = 1000;
% D1 e a funcao e^x
data = exp( linspace(-1,5,n) );

% D2 sao numeros aleatorios  ~N(0,1)
data(2,:) = randn(1,n);

figure(1), clf

% Especificar as opcoes no plot
h = plot( data(1,:), data(2,:) );

% Dar uma olhada nas opcoes
get(h)

% Deixar o visual do plot mais interessante
set( h, 'marker', 'p')
set( h, 'LineStyle', 'none', 'MarkerSize', 10, ...
    'MarkerFaceColor', 'r', 'MarkeredgeColor', 'b' )

%% scatter

% Basico
scatter(data(1,:),data(2,:))

% Incluir o tamanho do Maker
scatter(data(1,:),data(2,:),50,'filled')

% Incluir a cor
scatter(data(1,:),data(2,:),50,1:n,'filled')
scatter(data(1,:),data(2,:),50,randn(1,n),'filled')
scatter(data(1,:),data(2,:),50,log(1:n),'filled')

%%