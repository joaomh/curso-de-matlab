%%
%     Curso do canal ExataMenteS
%     Aula 47 - Funcoes
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atraves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%%

% Vetor dos dados
n = 100;
t = (0:n-1)/n;
    
% Sinal
x = randn(1,n) + linspace(0,100,n);

% Derivadas
derivada1 = diff(x');       % 1 Ordem
derivada2 = diff(x,2);      % 2 Ordem

figure(1), clf
plot(t,x,'linew',2)

% Caso voce queira apenas pegar uma parte dos dados
[ dx1, ~ ] = Derivada(x);
[ ~, dx2 ] = Derivada(x);
% Plots
figure(2), clf
plot(t,x, t,dx1, t,dx2)
