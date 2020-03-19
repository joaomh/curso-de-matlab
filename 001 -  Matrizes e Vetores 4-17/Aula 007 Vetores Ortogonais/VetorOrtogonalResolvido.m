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
alfa = (a' * b) / (b' * b);   % Projecao escalar
ab_Paralelo = alfa * b     % Vetor projetado

% Componente ortogonal
ab_Perpendicular = a - ab_Paralelo;

% Plot dos vetores
figure(1), clf
plot([0 a(1)],[0 a(2)],'b','linew',5) % Vetor original a
hold on
plot([0 b(1)],[0 b(2)],'g','linew',5) % Vetor original b

% Plot das componentes
plot([0 ab_Paralelo(1)],[0 ab_Paralelo(2)],'m--','linew',3) % ab paralelos
plot([0 ab_Perpendicular(1)],[0 ab_Perpendicular(2)],'k:','linew',3)  % ab perpendicular


legend({'a';'b';'ab paralelo';'ab perpendicular'})
axis([-1 1 -1 1]*max([norm(a) norm(b)]))

axis square

%%
