%%
%     Curso do canal ExataMenteS
%     Aula 20 - Importar Dados txt
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atraves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Instrutor: Joao Pinheiro
%%
% Abrir o arquivo
file = 

% Ler o arquivo

% Ignorar a primeira linha
IgnorarLinha = 

% Segunda linha, numero de sensores
 string_numSensores = 
 numSensores = 

% Terceira linha, numero de pontos 
 string_numTempo = 
 numPontos = 

% Comecar a ler a partir do "start"
cond = true;
while cond
    
    % Transforme a linha em dados
    aline = 
    
    % Faca um teste da nossa string para ver se e o "start"
    if 
        cond = false;
        
    end
end

% ler os dados

% Inicializar a Matriz
data = zeros(numSensores ,numPontos);

% Criacao de um operator logico para iniciar um Loop
cond = true;
while cond
    
    % Transforme a linha em dados
    aline = 
    
    % Checar os dados, para evitar que estamos no final da lista o 'end'
    if 
        cond = false;   
    else
        % Coloque os dados em uma matriz
        
    end
end

% Fazer o plot dos dados

figure(1), clf
plot(data','linew',2)

fclose(file); % Fechar o arquivo que abrimos no comeco
    