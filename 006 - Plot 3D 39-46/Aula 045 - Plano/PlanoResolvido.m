%%
%     Curso do canal ExataMenteS
%     Aula 45 - Plano
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atraves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%%

% Dois vetores em 3D
a = [3 3 0];
b = [4 2 1];


figure(1), clf, hold on

% Plot dos vetores
plot3([0 b(1)],[0 b(2)],[0 b(3)],'b','linew',2)
plot3([0 a(1)],[0 a(2)],[0 a(3)],'g','linew',2)

axis square, rotate3d on

% Plot do subespaco dos vetores
% Uso de funcoes
% Nao se assute com essa parte do codigo por enquanto
h = ezmesh( @(s,t)a(1)*s+b(1)*t , @(s,t)a(2)*s+b(2)*t , @(s,t)a(3)*s+b(3)*t , [-1 1 -1 1 -1 1]);
set(h,'facecolor','m','cdata',ones(50))
title('')

% Qualquer combinacao linear dos vetores tem que estar no plano
u  = randn*a + randn*b;
uh = plot3([0 u(1)],[0 u(2)],[0 u(3)],'b','linew',2);

% Utilizando numeros aleatorios
u = randn*a + randn*b;
set(uh,'XData',[0 u(1)],'YData',[0 u(2)],'ZData',[0 u(3)])

