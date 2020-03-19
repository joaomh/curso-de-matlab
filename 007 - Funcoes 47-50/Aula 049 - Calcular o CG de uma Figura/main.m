%%
%     Curso do canal ExataMenteS
%     Aula 49 - Calculo do Volume e do CG
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atraves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%%
% Read the figure
X = read_file('quad.pol');

% Drawling the figure
figure_drawling(X);

% Calculate the Volume and CG
Volume = volume_calculator(X);
CG = cg_calculator(X);

% Plot CG
hold on
plot(CG(1),CG(2) ,'ro')
title(['The volume is: ' num2str(Volume)])
