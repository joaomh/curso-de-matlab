%%
%     Curso do canal ExataMenteS
%     Aula 67 - Analise de Dados
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%%

% Load the dataset
load 271-y_data.mat

figure(1)
plot(H1_2(:,1), H1_2(:,2))
xlabel('Frequency [Hz]') ,ylabel('[g/N]')
title('FFR - Frequency Following Response')

figure(2)
plot(H1_2(:,1), abs(H1_2(:,2)))
title('FFR - Absolute Values')
xlabel('Frequency [Hz]') ,ylabel('FFR [g/N]')
hold on,
plot(H1_3(:,1), abs(H1_3(:,2)))
