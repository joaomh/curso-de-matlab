%%
%     Curso do canal ExataMenteS
%     Aula 20 - Importar Dados txt
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atraves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Instrutor: Joao Pinheiro
%%
% Abrir o arquivo
file = fopen('dados.txt' ,'r');

% Ler o arquivo

% Ignorar a primeira linha
IgnorarLinha = fgetl(file);

% Segunda linha, numero de sensores
 string_numSensores = regexp(fgetl(file) ,'\t','split');
 numSensores = str2double(string_numSensores(3)); % O 'numero' que esta no txt e uma string para o matlab,
                                                  % Precisamos converter para um numero por isso
                                                  % O uso de str2double

% Terceira linha, numero de pontos 
 string_numTempo = regexp(fgetl(file) ,'\t','split');
 numPontos = str2double(string_numTempo(3));

% Comecar a ler a partir do "start"
cond = true;
while cond
    
    % Transforme a linha em dados
    aline = fgetl(file);
    
    % Faca um teste da nossa string para ver se e o "start"
    if strcmpi(aline(1:5),'Start')
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
    aline = regexp( fgetl(file), '\t','split');
    
    % Checar os dados, para evitar que estamos no final da lista o 'end'
    if strcmpi(aline{1}(1:3),'end')
        cond = false;   
    else
        % Coloque os dados em uma matriz
        data( str2double(aline{2}) , str2double(aline{4}) ) = str2double(aline{6});
    end
end

% Fazer o plot dos dados 

figure(1), clf
plot(data','linew',2)

fclose(file); % Fechar o arquivo que abrimos no comeco
    