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
    if x(i) <= -1
        y(i) = -0.01*exp(-1*x(i));
        
    % Parte II
    elseif x(i) > -1 && x(i) <= 0
        y(i) = 1;
        
    % Parte III
    elseif x(i) > 0 && x(i) <= 3
        y(i) = x(i)^2 + 3*x(i);
        
    % Parte IV
    elseif x(i) > 3 && x(i) <= 10
        y(i) = sin(2*pi * x(i));
        
    % Parte V
    elseif x(i) > 10
         y(i) = sqrt( x(i) );
        
    end    
end

figure(1), clf
plot(x,y,'linew',2)

%% Uma solucao mais elegante

% Vamos achar os indices dos pontos

xidc = dsearchn(x',[-1 0 3 10]'); % A funcao dsearch procura o numero dentro de um vetor coluna

% Parte I
y( 1:xidc(1) ) = -0.01*exp(-x(1:xidc(1)) );

% Parte II
y( xidc(1)+1:xidc(2) ) = 1;
  
% Parte III
y( xidc(2)+1:xidc(3) ) = x( xidc(2)+1:xidc(3) ).^2 + 3*x( xidc(2)+1:xidc(3) );

% Parte IV
y( xidc(3)+1:xidc(4) ) = sin(2*pi * x( xidc(3)+1:xidc(4) ) );

% Parte V
y( xidc(4)+1:end ) = sqrt( x( xidc(4)+1:end ) );

hold on
plot(x,y,'--','linew',4)

%% Metodo 3
% Em Linas

% Vetor inicial
t = -5:.01:30;

% Em uma linha
f = (t<=-1).*-0.01.*exp(-1.*t) + (t>-1 & t<=0).*1 + (t>0 & t<=3).*(t.^2 + 3.*t) + ...
    (t>3 & t<=10).*sin(2*pi .* t) + (t>10).*sqrt( t );

% Plot
figure(1), clf, 
hold on
plot(t,f, 'r--', 'linew', 2)
plot(x,y,'linew',2)
xlabel('Time')
legend('Uma linha','Metodo I')

