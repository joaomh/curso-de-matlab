%%
%     Curso do canal ExataMenteS
%     Aula 48 - Funcoes Anonimas
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atraves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%% Pequena introducao

% funcao = @(input) function_def
func = @(x,t) x + t;

func(0,2)
func(-3,3)

%% Oscilador

% Definindo o tempo
Freq = 1000; % Hz
Tempo = 0:1/Freq:2;% Tempo em segundos
A = 10;

% Definir as funcoes anonimas
Oscilador = @(freq,tau) A*sin( 2*pi * freq * Tempo) .* exp( -tau*Tempo );
Decaimento = @(tau) A*exp( -tau*Tempo );

% Output
y = Oscilador(10,2);
Fator = Decaimento(2);

% Plot
figure(1), clf
plot(Tempo,y,Tempo,Fator,'r--','LineWidth',2);
xlabel('Time (s)'), ylabel('Amplitude')
title( func2str(Oscilador) )
legend('Oscilador Harmonico', 'Decaimento Exponencial')

%% Imagem 

% Vetor do Tau
tauV = linspace(0,10,100);

% Iniciando
Y = zeros(length(tauV),length(Tempo));

% Loop para cada constante de tempo
% Calculo do Oscilador para um Tau fixo

for i = 1:length(tauV)
    
    Y(i,:) = Oscilador(25,tauV(i));
    
end

% Plot
figure(2), clf
colormap jet
contourf(Tempo, tauV, Y,40,'linecolor','none')
xlabel('Tempo (s)')
ylabel('Constante de Tempo (\tau)')

figure(3), clf
surf(Tempo(:),tauV(:),Y)
colormap jet, axis square
shading interp
xlabel('Tempo (s)')
ylabel('Constante de Tempo (\tau)')
zlabel(' Amplitude ' )
