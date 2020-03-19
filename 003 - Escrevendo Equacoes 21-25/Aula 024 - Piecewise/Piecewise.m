%%
%     Curso do canal ExataMenteS
%     Aula 24 - Funcoes Definidas Por Partes (Piecewise)
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atraves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Instrutor: Joao Pinheiro
%%

x = linspace(-5, 30, 1000); % Definindo o intervalo
y = zeros( size(x) ); % Iniciando a nossa funcao 

% Primeira Solucao
for i = 1:length(x)
   
    % Parte I
    if 
        
    % Parte II
    elseif 
        
    % Parte III
    elseif 
        
    % Parte IV
    elseif 
        
    % Parte V
    elseif 
        
    end    
end

figure(1), clf
plot(x,y,'linew',2)

%% Uma solucao mais elegante

% Vamos achar os indices dos pontos

xidc = dsearchn % A funcao dsearch procura o numero dentro de um vetor coluna

% Parte I


% Parte II

  
% Parte III


% Parte IV


% Parte V


hold on
plot(x,y,'--','linew',4)

%% Metodo 3
% Em Linas

% Vetor inicial
t = -5:.01:30;

% Em uma linha
f = 

% Plot
figure(1), clf, 
hold on
plot(t,f, 'r--', 'linew', 2)
plot(x,y,'linew',2)
xlabel('Time')
legend('Uma linha','Metodo I')

