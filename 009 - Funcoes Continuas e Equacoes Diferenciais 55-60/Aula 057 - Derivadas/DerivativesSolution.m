%%
%     Curso do canal ExataMenteS
%     Aula 57 - Derivadas
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%% 
% Compute derivative of symbolic equation
syms x
fx  = exp(0.1*x);
df = diff(fx);

% Plot the function and its derivative
figure(1), clf
fplot(fx), hold on
fplot(df)

% Make the legend
legend({['f(x)=' char(fx)  ],['df=' char(df)  ]});


% Specified point
b = 10;
subs(fx,b)
subs(df,b)

figure(2), clf
% Discrete
time  = -5:.001:5;
fxD   = exp(0.1*time);
dfD   = 10000*diff(fxD);
plot(time,fxD), hold on
plot(time(1:end-1),dfD,'r--');
legend({'f(x)','df'})

%% A complex function

% Function
fx  = exp(log(x) + sin(x)^x) / ( tanh(x)*x + 3^x*cos(x) );

% Derivative
df = diff(fx);

% A batter look
pretty(df)

% Plot
figure(3), clf
fplot(fx,'linew',2), hold on
fplot(df,'linew',2)
legend({'f(x)';'df'})
set(gca,'ylim',[-100 100])
title({ 'f(x)=' char(fx)})
