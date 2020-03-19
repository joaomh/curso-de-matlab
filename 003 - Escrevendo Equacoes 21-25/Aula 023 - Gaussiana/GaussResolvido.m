%%
%     Curso do canal ExataMenteS
%     Aula 23 - Gaussiana
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atraves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Instrutor: Joao Pinheiro
%%

% Definindo as constantes reais
sig = -2;
u = 5;
x = 0:0.1:10;

% y = ( 1 /(sqrt(2*pi*sig^2) ) * exp( -(x - u).^2 / (2*sig^2) ));
% Escrevendo um codigo mais limpo do que o acima
nun = -(x - u).^2;
den = 2 * sig.^2;
A = 1 / ( sqrt( 2*pi * sig^2 ) );
y = A * exp( nun ./ den );


figure(1), clf
plot(x,y,'linew',2);