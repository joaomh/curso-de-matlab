%%
%     Curso do canal ExataMenteS
%     Aula 32 - Dados Multidimensionais 
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atraves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Instrutor: Joao Pinheiro
%%


% Numero de pontos
n = 400;

% create a 3D dataset
x = linspace(-1,1,n)
d1 = x.^4 % x^4
d2 = sin(3*x) % sin(3x)
d3 = exp(-x.^2) % e^-x^2

% Combinar os dados com algum ruido
y = [ d1; d2+randn(1,n)/30; d3;];

figure(1), clf
scatter(y(1,:), y(2,:), 100, y(3,:), 'filled')

% Eixos do grafico
colormap(jet) % mudar as cores do grafico
xlabel('y_1'), ylabel('y_2'), legend('y_3')

%%