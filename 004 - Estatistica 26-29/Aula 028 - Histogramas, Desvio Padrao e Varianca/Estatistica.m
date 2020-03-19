%%
%     Curso do canal ExataMenteS
%     Aula 28 - Estatistica, Media, Mediana, Histogramas, Desvio Padrao e Varianca
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atraves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Instrutor: Joao Pinheiro
%%
% Colcoar os numeros em ordem crescente e desc

% Dados
data = 10 .* randn(1,5);
data = round(data)

A = 
D = 
%%

% Media, Mediana e Moda
data = round( (10*randn(100,1)) );

% Vamos dar uma olhada nos nossos dados
figure(1), clf


% Calculo da Media
n = 
mean1 = 

% Comparar com a funcao do MATLAB
mean2 = 

% Calculo da Mediana
% Colocar em ordem os pontos
datasort = 

% Achar o valor do meio
median1 = 

% Compare com a funcao to MATLAB
median2 =

% Calculo da Moda
% Ache o valor dos dados, utilizando unique
uniquevals = unique(data);

% Loop entre os dados, para contar o numero de cada valor 
numnums = zeros( size(uniquevals) );

for i = 1:length(numnums)
    numnums(i) = 
end

% Ache o maximo
[nda,maxind] = max( numnums );

% A moda e esse valor
themode = 

% A funcao implementada no MATLAB
themode2 = 

% Alguns Plots
hold on
plot( [1 1]*mean1, get(gca,'ylim'), 'b--', 'linew', 2 )
plot( [1 1]*median1, get(gca,'ylim'), 'r--', 'linew', 2 )
plot( [1 1]*themode, get(gca,'ylim'), 'm--', 'linew', 2 )

legend({'Data';'Media';'Mediana';'Moda'})
xlabel('Valores'), ylabel('Numero de Quantidade')

%%
% Varianca e Desvio Padrao
data = round( (10*randn(100,1)) );

% Vamos dar uma olhada nos nossos dados
figure(1), clf
histogram(data,max(data))

% Calculo da Varianca

var1 = 0;
for i = 1:length(data)
    
end

var1 = 

% Compare com a funcao do MATLAB
var2 = 

% Calculo do Desvio Padrao
dataM = 

% Calculo do Desvio Padrao
std1 = 0;
for i = 1:length(dataM)
    
end

std1 = 

% Compare com a funcao do MATLAB
std2 = 