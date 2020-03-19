%%
%     Curso do canal ExataMenteS
%     Aula 54 - Maximo e Minimo Locais
%     Se inscreva no canal e nos ajude a crescer <3
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%% 

% Signal 
x  = -pi: .01 :20.5*pi;
y = cos(x) .* exp(x/10);

figure(1), clf
plot(x,y,'b','linew',2)
xlabel('x'), ylabel('f(x)')

% Globlal maximum
[MaxValue, MaxIdx] = 
hold on
plot(x(MaxIdx),MaxValue,'ko','linew',2,'markersize',10,'markerfacecolor','r')


% If we uses a restricted range
% "Local" maximum is the global maximum
RangeLocal = 
RandeIdx   = 

[LocalMaxValue,LocalMaxIdx] = 
% Plot it
% -1 offset
plot(,'ko','linew',2,'markersize',10,'markerfacecolor','g')

% Local  Maxima / Minima

% Find the local maxima and plot
MaxPoints = 
plot(x(MaxPoints),y(MaxPoints),'bo','linew',2,'markersize',10,'markerfacecolor','y')

% try again using detrended signal
MaxPoints = 
plot(x(MaxPoints),y(MaxPoints),'ro','linew',2,'markersize',10,'markerfacecolor','y')

[~,MaxPoints] = 
plot(x(MaxPoints),y(MaxPoints),'mo','linew',2,'markersize',10,'markerfacecolor','y')