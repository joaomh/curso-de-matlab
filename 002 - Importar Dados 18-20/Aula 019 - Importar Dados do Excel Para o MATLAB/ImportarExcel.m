%%
%     Curso do canal ExataMenteS
%     Aula 19 - Importar Dados do Excel 
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atr�ves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Instrutor: Joao Pinheiro
%%
% Arquivo e o diretorio atual
dFolder = '';
DadosArquivo   = 'dados.xlsx';

% Importar os dados utilizando a funcao xlsread
% E interessante checkar os nossos dados depois
[] = xlsread

% Extrair dados da linha inicial
LinhaComeco =  % comparar cada elemento da primeira coluna, estamos procurando o elemento 'Start Data'

% Lista dos sensores
Sensores =  % Para cada linha dos dados
                                                    % Quero saber o seu
                                                    % sensor correspondente
                                                    

% Lista do tempo
Tempo = 

% Todos os dados
datatemp = 

% Lista de cada sensor e do tempo em ordem e evitar repeticoes
LSensor = 
LTempo = 

% Inicializacao dos dados da matriz como NaN no lugar de zeros
MatrizDados =

% Uma linha de cada vez
for i = 1:length(Sensores)
    
    % Linha com seu tempo especifico
    MatrizDados
end

% plot
figure(1), clf
plot(MatrizDados','s-','markerfacecolor','w')

% Identificar os dados perdidos
% Ver se tem dados do tipo NaN
DadosPerdidos = 

% Loop sobre os dados perdidos
for i = 1:length(DadosPerdidos)
    
    % Converter o nosos index para achar o seu dado
    [CanalP,TempoP] = 
    
    % Print da menssagem
    warning([ 'O dado do canal' num2str(CanalP)  ' timepoint ' num2str(TempoP) ' tem um valor perdido' ])
end

