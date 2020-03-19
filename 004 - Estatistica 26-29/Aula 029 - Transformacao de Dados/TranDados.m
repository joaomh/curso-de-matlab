%%
%     Curso do canal ExataMenteS
%     Aula 29 - Estatistica, Media, Mediana, Histogramas, Desvio Padrao e Varianca
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atraves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Instrutor: Joao Pinheiro
%%
% Criar uma distribuicao log-normal
data = exp( 2 + 0.5*randn(10000,1) );
[ = hist(data,100);

% Aplique uma transformacao log 
datalog = 
[] = hist(datalog,100);

% Raiz quadrada
datasqt = 
[] = hist(datasqt,100);

% Ordem da matriz
datarnk = 
[] = hist(datarnk,100);

figure(1), clf, hold on
plot(xo,yo,'k','linew',2)
plot(xl,yl,'r','linew',2)
plot(xs,ys,'b','linew',2)
plot(xr,yr,'ms-','linew',2)

legend({'Original';'Log';'Square root';'Ranked'})
set(gca,'xlim',[0 100])
xlabel('Value'), ylabel('Count')

% Transformar qualquer distribuicao em uma Gaussiana

% 1 - Rank os dados
% 2 - Escale os valores em -1 a +1
% 3 - Aplique a tanh inversa

N = 10000;

% Criar uma non-normal dados
data = linspace(100,.001,N) .* rand(1,N);

figure(2), clf
subplot(221)
plot(data)
title('Data')

subplot(222)
hist(data,round(N/20))
title('Dados')

% Parte 1: rank
dataR = tiedrank(data);

% Parte 2: scale to -/+1
dataR =  % escala para 1
dataR =  % escala para [0 2]
dataR =  % escala para [-1 1]

% Parte 3: tangente hiperbolica inversa
dataR = ;

subplot(223)
plot(dataR)
title('Dados Transformados')

subplot(224)
hist(dataR,round(N/20))
title('Distribuicao Transformada')