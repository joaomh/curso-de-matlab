%%
%     Curso do canal ExataMenteS
%     Aula 7 - Vetores Ortogonais
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atráves da tecnologia :)
%     Instrutor: João Pinheiro

%%

% Vetor que sera decomposto
a = [ 4 6 ]'

% Vetor de referencia
b = [ 8 2 ]'

% Componente paralela
alfa =   % Projecao escalar
ab_Paralelo =     % Vetor projetado

% Componente ortogonal
ab_Perpendicular = 

% Plot dos vetores
figure(1), clf
plot([],[],'b','linew',5) % Vetor original a
hold on
plot([],[],'g','linew',5) % Vetor original b

% Plot das componentes
plot([],[],'m--','linew',3) % ab paralelos
plot([],[],'k:','linew',3)  % ab perpendicular


legend({'a';'b';'ab paralelo';'ab perpendicular'})
axis([-1 1 -1 1]*max([norm(a) norm(b)]))

axis square

%%
