%%
%     Curso do canal ExataMenteS
%     Aula 86 - Modelos Nao Lineares
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%%
% Intro to minimizing anonymous functions
funcHandle = @(x) ( x + sin(x)).^2;

% Plot the function
x = linspace(-10,10,100);
figure(1), clf, hold on
plot(x,funcHandle(x),'k','linew',3)

% Use fminsearch to find the minimum value
minValue = fminsearch(funcHandle,-2);

% Plot
plot(minValue,funcHandle(minValue),'ro','markerfacecolor','r','markersize',15)

%% Define function
funcHandle = @(x) x.*sin(x) + x.^2.*cos(x).^2 + x.*sin(x.^2);

% Plot the function
figure(2), clf
x = linspace(-2*pi,2*pi,200);
plot(x,funcHandle(x),'k','linew',2)
set(gca, 'xlim', x([1 end]))
xlabel('x'), ylabel('f(x)')
title(func2str(funcHandle))

% Find the minimum
initValue = 3;
[xValue,yValue] = fminsearch(funcHandle,initValue);

% Plot the minimum
hold on
plot(xValue,yValue, 'go', 'markerfacecolor','g','markersize',10)
plot([1 1]*initValue,get(gca,'ylim'),'k:')
legend({'f(x)';[ 'Min near ' num2str(initValue) ]})

% Using for fminbnd
[xValue, yValue]   = fminbnd(funcHandle,1,6);
plot(xValue,yValue,'mo','markerfacecolor','m','markersize',10)
legend({'f(x)';'Using Search';[ 'Min near ' num2str(initValue) ]; 'Using fminbnd'})

