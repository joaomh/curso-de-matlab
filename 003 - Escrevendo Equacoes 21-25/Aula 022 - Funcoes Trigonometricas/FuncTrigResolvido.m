%%
%     Curso do canal ExataMenteS
%     Aula 22 - Funcoes Trigonometricas
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atraves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Instrutor: Joao Pinheiro
%%

% Funcoes Discretas
% Parametros da Funcao
A = 5;             % Amplitude da Funcao
phi = 2;           % Angulo de fase / defasagem
freq = 0.05;       % Frequencia
t = 0:.1:10*pi;    % Tempo

% Cosseno
w1 = A * cos( 2*pi*freq*t + phi );

% Seno
w2 = A * sin( 2*pi*freq*t + phi );

% Tangente
w3 = A * tan( 2*pi*freq*t + phi );
w4 = A * ( w2 ./ w1 );

% plot do seno e cosseno
figure(1), clf
plot(t,w1, 'r','linew', 2)
hold on
plot(t,w2, 'b','linew', 2)
hold on
xlabel('Tempo')
ylabel('Amplitute')
legend('Cos', 'Sin')

% plot da tangente pelo dois metodos
figure(2), clf
plot(t,w3, 'k','linew', 2)
hold on
plot(t,w4, '--s','linew', 2)
hold on
xlabel('Tempo')
ylabel('Amplitute')
legend('Tan 1', 'Tan 2')

% Funcoes Trigonometricas Continuas do Calculo
syms x
fplot(tan(x),[-4*pi 4*pi])
grid on

