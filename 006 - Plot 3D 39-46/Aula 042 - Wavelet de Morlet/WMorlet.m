%%
%     Curso do canal ExataMenteS
%     Aula 42 - Wavelet de Morlet
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atraves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%%


% Parametros da Wavelet de Morlet
n = 20;                 % Numero de frequencia
freq = linspace(1,8,n); % Vetor de frequencia
tempo = -5:.001:5;      % Vetor do tempo

% Iniciar a matriz
Morlet = zeros(n,length(tempo));

A = 10;
% Loop em cada frequencia
for i = 1:n
    
    % Parametro sigma do gaussiano
    sigma = 
    
    % Criar a Wavelet para essa frequencia
    Morlet(i,:) = 
end

% Plot 2D
figure(1), clf
plot()
title('Wavelet de Morlet')
xlabel('Tempo (sec.)'), ylabel('Amplitude')

% Surf
figure(2), clf
surf()
shading interp
colormap jet
rotate3d on
axis square
title('Familia de Wavelet de Morlet')
xlabel('Tempo (sec.)'), ylabel('Frequencia (Hz)'), zlabel('Amplitude')

% Mudar a cor pela frequencia
figure(3), clf
surf()
shading interp
colormap jet
rotate3d on
axis square
title('Familia de Wavelet de Morlet - Variando as Cores pela Frequencia')
xlabel('Tempo (sec.)'), ylabel('Frequencia (Hz)'), zlabel('Amplitude')
