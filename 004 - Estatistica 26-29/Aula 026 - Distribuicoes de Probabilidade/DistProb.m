%%
%     Curso do canal ExataMenteS
%     Aula 26 - Distribuicoes de Probabilidade, Laplace e Log-Normal
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atraves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Instrutor: Joao Pinheiro

%% Distribuicao de Laplace

% parameters
x = -5:.01:5;
mi = 0;
b = 1/3;

% Definindo a funcao da distribuicao de Laplace
f = 

%  Normalizando a densidade de probabilidade
f_pdf = 

% Plot da PDF ( Funcao Densidade de Probabilidade )
figure(1), clf
subplot(211)
plot(x,f_pdf,'linew',3)
xlabel('x'), ylabel('p( f(x) )')
title('Densidade de probabilidade')

% Plot da CFD ( Funcao Distribuicao Acumulada )
subplot(212)
plot(x,,'linew',2)
xlabel('x'), ylabel('\Sigma p( f(x) )')
title('Funcao Distribuicao Acumulada')


%% Distribuicao log-normal 

% Parametros da funcao e o vetor X
x = linspace(0.001,7,100);
u =  0;
sigma = .5;

% Dividindo a PDF ( Densidade de probabilidade ) em duas partes
p1 = 
p2 = 

% Combinar as duas partes
logNormal = 

% convert to probability density
logNormalPDF = 

% Plot da PDF ( Funcao Densidade de Probabilidade )
figure(2), clf
subplot(211)
plot(x,logNormalPDF,'linew',2)
xlabel('x'), ylabel('p( f(x) )')
title('Densidade de probabilidade')

% Plot da CFD ( Funcao Distribuicao Acumulada )
subplot(212)
plot(x,,'linew',2)
xlabel('x'), ylabel('\Sigma p( f(x) )')
title('Funcao Distribuicao Acumulada')
