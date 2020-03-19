%%
%     Curso do canal ExataMenteS
%     Aula 9 - Matriz Inversa Uitlizando Decomposição QR 
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atráves da tecnologia :)
%     Instrutor: João Pinheiro

%%
% Criar a matriz
d = 6; % Dimensao da matriz
A = round( 20 * randn(d) ); % Crie uma matriz de numeros aleatorios


% Funcao QR do matlab
[Q,R]  = qr( A );


% Calcular a inversa
QR_in = R\Q';       % utilizando o método QR
in = inv(A);             % utilizando a funcao inv do MATLAB

% Multiplicar as Matrizes para ver se o resultado e a identidade 
M1 = A * QR_in; % Identidade por QR
M2 = A * in;    % Identidade por inv

% Imagem das matrizes
figure(1), clf

% Matriz Original A
subplot(131)
imagesc(A), axis image
set(gca,'xtick',[],'ytick',[])
title('A')

% Inversa por QR
subplot(232)
imagesc(QR_in), axis image
set(gca,'xtick',[],'ytick',[])
title('A^{-1} usando QR')

% A multiplicacao da Matriz pela sua Inversa, 
% Tem que ser a Matriz Identidade
subplot(233)
imagesc(M1), axis image
set(gca,'xtick',[],'ytick',[])
title('A*A^{-1} = M1 = I')


% Matriz inversa pela funcao do matlab inv
subplot(235)
imagesc(in), axis image
set(gca,'xtick',[],'ytick',[])
title('A^{-1} usando inv()')

% A multiplicacao da Matriz pela sua Inversa
subplot(236)
imagesc(M2), axis image
set(gca,'xtick',[],'ytick',[])
title('A*A^{-1} = M2 = I')

%%