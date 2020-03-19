%%
%     Curso do canal ExataMenteS
%     Aula 25 - Funcoes Sigmoid
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atraves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Instrutor: Joao Pinheiro
%%

% sigmoid parameters
A =  1; % Amplitude
B =  1; % Stepness 
C = 0; % Centro

% Vetor de X
x = linspace(-5,5,400);

% Simoid
sigmoid = 

% Plot
figure(1), clf
plot(x,sigmoid,'linew',3)
hold on
plot([0 0],get(gca,'ylim'),'k--')
title 'Sigmoid ( Funcao logistica )'

% Linha vertical em x = c
plot([C C], get(gca,'ylim'),'r--')

% Linha horizontal em y = A/2
plot(get(gca,'xlim'),[1 1]*A/2,'m--')

xlabel('x'), ylabel('f(x)')


% Tangente Hiperbolica
tgh = 
figure(2), clf
plot(x,tgh,'linew',2)
hold on
plot(x,,'r--')
xlabel('x'), ylabel('f(x)')
title 'Tangente Hiperbolico'

% Arco Tangente
figure(3), clf
plot(x,,'linew',2)
xlabel('x'), ylabel('f(x)')
title 'Arco Tangente'

% Funcao Algebrica
figure(4), clf
fAlg = 
fAlg2 = 
plot(x,fAlg,'linew',2)
hold on
plot(x,fAlg2,'linew',2)
legend('$\frac{x}{\sqrt{1+x^2}}$','$\frac{x}{1+|x|}$')
set(legend,'Interpreter','latex');
set(legend,'FontSize',17);
xlabel('x'), ylabel('f(x)')
title 'Funcao Algebrica'

% Funcao Gudermaniana
figure(5), clf
Gud = 
plot(x,Gud ,'linew',2)
xlabel('x'), ylabel('f(x)')
title 'Funcao Gudermaniana'

% Funcao Sinal
figure(6), clf
plot(x,,'linew',2)
xlabel('x'), ylabel('f(x)')
title 'Funcao Sinal'

% Funcao Sinal
figure(7), clf
plot(x,,'linew',2)
xlabel('x'), ylabel('f(x)')
title 'Funcao Erro'

% Plot Todas juntas




