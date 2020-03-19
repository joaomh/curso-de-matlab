%%
%     Curso do canal ExataMenteS
%     Aula 51 - Minimo de uma Funcao
%     Se inscreva no canal e nos ajude a crescer <3
%     Vamos melhorar o Brasil atraves da tecnologia :)
%     https://www.youtube.com/channel/UCZyFebN0_gF2yy5fhVhlXtA
%     Professor: Joao Pinheiro
%     Copyright https://github.com/joaomh
%% 

% Vector of x
x = 1:.001:10;

% Function y(x)
y = (x - 3).*(x - 2).*(x - 1).* ( x - 5).* ( x - 7) ./ exp(x);

% Minimum
[ymin, idx] = min(y);
xmin = x(1395);

% Using own function
[Xmin, Ymin] =  MinFunc(x,y);

% Using a loop for calculate the dderivative 
df = zeros(size(x));
for i  = 1:(length(x)-1)
   
        df(i) = ( y(i+1) - y(i) ) ./ ( x(i+1) - x(i) );
end

% Plot
figure(1), clf, hold on
plot(x,y,'b','linew',2)
plot(x,zeros(size(x)),'r','linew',2);
plot(x,df,'k','linew',2);
legend('y(x)','zero','dy')

% Check using diff
figure(2), clf
plot(x(1:end-1),diff(y),'k','linew',2)
