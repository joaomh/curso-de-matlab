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
[NUM, TXT, RAW] = xlsread([ dFolder DadosArquivo ]);

% Extrair dados da linha inicial
LinhaComeco = find(strcmpi(RAW(:,1),'Start data')); % comparar cada elemento da primeira coluna, estamos procurando o elemento 'Start Data'

% Lista dos sensores
Sensores = cell2mat(RAW( LinhaComeco+1:end-1, 2 )); % Para cada linha dos dados
                                                    % Quero saber o seu
                                                    % sensor correspondente
                                                    

% Lista do tempo
Tempo = cell2mat(RAW( LinhaComeco+1:end-1, 4 ));

% Todos os dados
datatemp = cell2mat(RAW( LinhaComeco+1:end-1, 6 ));

% Lista de cada sensor e do tempo em ordem e evitar repeticoes
LSensor = unique(Sensores);
LTempo = unique(Tempo);

% Inicializacao dos dados da matriz como NaN no lugar de zeros
MatrizDados = nan( length(LSensor), length(LTempo) );

% Uma linha de cada vez
for i = 1:length(Sensores)
    
    % Linha com seu tempo especifico
    MatrizDados(Sensores(i), Tempo(i)) = datatemp(i);
end

% plot
figure(1), clf
plot(MatrizDados','s-','markerfacecolor','w')

% Identificar os dados perdidos
% Ver se tem dados do tipo NaN
DadosPerdidos = find(isnan(MatrizDados));

% Loop sobre os dados perdidos
for i = 1:length(DadosPerdidos)
    
    % Converter o nosos index para achar o seu dado
    [CanalP,TempoP] = ind2sub( size(MatrizDados), DadosPerdidos(i) );
    
    % Print da menssagem
    warning([ 'O dado do canal' num2str(CanalP)  ' timepoint ' num2str(TempoP) ' tem um valor perdido' ])
end

