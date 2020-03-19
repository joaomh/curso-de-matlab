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

A = sort(data,'ascend')
D = sort(data,'descend')
%%

% Media, Mediana e Moda
data = round( (10*randn(100,1)) );

% Vamos dar uma olhada nos nossos dados
figure(1), clf
histogram(data,max(data))

% Calculo da Media
n = numel(data);
mean1 = sum(data) / n;

% Comparar com a funcao do MATLAB
mean2 = mean(data);

% Calculo da Mediana
% Colocar em ordem os pontos
datasort = sort( data );

% Achar o valor do meio
median1 = datasort( round(n/2) );

% Compare com a funcao to MATLAB
median2 = median( data );

% Calculo da Moda
% Ache o valor dos dados, utilizando unique
uniquevals = unique(data);

% Loop entre os dados, para contar o numero de cada valor 
numnums = zeros(size(uniquevals));

for i = 1:length(numnums)
    numnums(i) = sum ( data == uniquevals(i) );
end

% Ache o maximo
[nda,maxind] = max( numnums );

% A moda e esse valor
themode = uniquevals( maxind );

% A funcao implementada no MATLAB
themode2 = mode( data );

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
    var1 = var1 + (data(i) - mean(data))^2;
end

var1 = var1 / (length(data)-1);

% Compare com a funcao do MATLAB
var2 = var(data);

% Calculo do Desvio Padrao
dataM = data - mean(data);

% Calculo do Desvio Padrao
std1 = 0;
for i = 1:length(dataM)
    std1 = std1 + dataM(i)^2;
end

std1 = sqrt( std1 / (length(dataM) -1) );

% Compare com a funcao do MATLAB
std2 = std(data);